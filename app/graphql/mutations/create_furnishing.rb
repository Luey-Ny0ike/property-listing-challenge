module Mutations
  class CreateFurnishing < BaseMutation
    # Arguments
    argument :property_id, ID, required: true
    argument :description, String, required: true

    field :furnishing, Types::FurnishingType, null: false

    def resolve(property_id:, description:)
      begin
        property = Property.find(property_id)
        furnishing = property.build_furnishing(description: description)
        furnishing.save
        { furnishing: furnishing }
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new("Property with ID #{property_id} was not found.")
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Furnishing could not be created. errors: #{e.message}")
      end
    end
  end
end

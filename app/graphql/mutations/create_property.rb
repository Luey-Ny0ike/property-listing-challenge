module Mutations
  class CreateProperty < BaseMutation
    # Arguments
    argument :name, String, required: true
    argument :description, String, required: true
    argument :property_type, String, required: true
    argument :bedrooms, Integer, required: false
    argument :bathrooms, Integer, required: false

    # Define the return type for the mutation
    field :property, Types::PropertyType, null: true

    # Define the resolve method for the mutation
    def resolve(name:, property_type:, description:, **args)
      property = Property.create!(
        name: name,
        property_type: property_type,
        description: description,
        **args
      )

      # to return the created property record
      { property: property }
    end
  end
end

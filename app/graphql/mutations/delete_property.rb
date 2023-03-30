module Mutations
  class DeleteProperty < BaseMutation
    # Arguments
    argument :id, ID, required: true

    field :deleted, Boolean, null: false

    def resolve(id:)
      begin
        property = Property.find(id)
        property.destroy
        { deleted: true }
      rescue ActiveRecord::RecordNotFound => e
        GraphQL::ExecutionError.new("Property with ID #{id} was not found.")
      rescue ActiveRecord::RecordNotDestroyed => e
        GraphQL::ExecutionError.new("Failed to delete. Message: #{e.message}")
      end
    end
  end
end

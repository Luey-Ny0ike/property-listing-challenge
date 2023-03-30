module Mutations
  class DeleteValuation < BaseMutation
    # Arguments
    argument :id, ID, required: true

    field :deleted, Boolean, null: false

    def resolve(id:)
      begin
        valuation = Valuation.find(id)
        valuation.destroy
        { deleted: true }
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new("Valuation with ID #{id} was not found.")
      rescue ActiveRecord::RecordNotDestroyed => e
        GraphQL::ExecutionError.new("Failed to delete. Message: #{e.message}")
      end
    end
  end
end

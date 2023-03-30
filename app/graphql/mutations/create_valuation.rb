module Mutations
  class CreateValuation < BaseMutation
    # Arguments
    argument :property_id, ID, required: true
    argument :value, Float, required: true
    argument :valuation_date, GraphQL::Types::ISO8601Date, required: true

    field :valuation, Types::ValuationType, null: true

    def resolve(property_id:, value:, valuation_date:)
      begin
        property = Property.find(property_id)
        valuation = property.build_valuation(value: value, valuation_date: valuation_date)
        valuation.save
        { valuation: valuation }
      rescue ActiveRecord::RecordNotFound
        GraphQL::ExecutionError.new("Property with ID #{property_id} was not found.")
      rescue ActiveRecord::RecordInvalid => e
        GraphQL::ExecutionError.new("Valuation could not be created. errors: #{e.message}")
      end
    end
  end
end

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :furnishings, [FurnishingType], null: false do
      description 'Retrieves all the furnishings'
    end

    def furnishings
      Furnishing.all
    end

    field :furnishing, FurnishingType do
      description 'Retrieves single furnishing'
      argument :id, ID, required: true
    end

    def furnishing(id:)
      Furnishing.find(id)
    end

    field :properties, [PropertyType], null: false do
      description 'Retrieves all the properties'
    end

    def properties
      Property.all
    end

    field :property, PropertyType do
      description 'Retrieves a single property'
      argument :id, ID, required: true
    end

    def property(id:)
      Property.find(id)
    end

    field :valuations, [ValuationType], null: false do
      description 'Retrieve all valuations'
    end

    def valuations
      Valuation.all
    end

    field :valuation, ValuationType do
      description 'Retrieves a single valuation'
      argument :id, ID, required: true
    end

    def valuation(id:)
      Valuation.find(id)
    end
  end
end

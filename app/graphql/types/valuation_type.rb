# frozen_string_literal: true

module Types
  class ValuationType < Types::BaseObject
    field :id, ID, null: false
    field :value, Float
    field :property_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :valuation_date, GraphQL::Types::ISO8601Date
    field :property, PropertyType, null: false
  end

  def property
    object.property
  end
end

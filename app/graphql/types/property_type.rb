# frozen_string_literal: true

module Types
  class PropertyType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :property_type, String
    field :description, String
    field :bedrooms, Integer
    field :bathrooms, Integer
    field :free_from, GraphQL::Types::ISO8601Date
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :valuation, ValuationType
    field :furnishing, FurnishingType
  end

  def valuation
    object.valuation
  end

  def furnishing
    object.furnishing
  end
end

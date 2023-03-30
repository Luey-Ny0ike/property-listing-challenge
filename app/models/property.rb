class Property < ApplicationRecord
  PROPERTY_TYPES = ['Apartment', 'House', 'Townhouse', 'Condo'].freeze

  # Associations
  has_one :furnishing
  has_one :valuation

  # Validations
  validates_presence_of :name, :property_type, :description
end

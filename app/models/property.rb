class Property < ApplicationRecord
  PROPERTY_TYPES = ['Apartment', 'House', 'Townhouse', 'Condo'].freeze

  # Associations
  has_one :furnishing, dependent: :destroy
  has_one :valuation, dependent: :destroy

  # Validations
  validates_presence_of :name, :property_type, :description
end

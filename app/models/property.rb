class Property < ApplicationRecord
  # Associations
  has_one :furnishing
  has_one :valuation

  # Validations
  validates_presence_of :name, :property_type, :description, :bedrooms, :bathrooms
end

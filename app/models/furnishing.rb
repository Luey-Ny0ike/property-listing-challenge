class Furnishing < ApplicationRecord
  # Associations
  belongs_to :property

  # Validations
  validates_presence_of :description
end

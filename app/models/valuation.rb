class Valuation < ApplicationRecord
  # Associations
  belongs_to :property

  # Validations
  validates_presence_of :value, :valuation_date
end

class Property < ApplicationRecord
  # Associations
  has_one :furnishing
  has_one :valuation
end

FactoryBot.define do
  factory :property do
    name { "MyString" }
    property_type { "MyString" }
    description { "MyText" }
    bedrooms { 1 }
    bathrooms { 1 }
    free_from { "2023-03-30" }
  end
end

FactoryBot.define do
  factory :property do
    name { Faker::FunnyName.four_word_name }
    property_type { Property::PROPERTY_TYPES.sample }
    description { Faker::TvShows::FinalSpace.quote }
    bedrooms { Faker::Number.between(from: 1, to: 10) }
    bathrooms { Faker::Number.between(from: 1, to: 4) }
    free_from { Faker::Date.backward(days: 30) }
  end
end

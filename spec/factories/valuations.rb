FactoryBot.define do
  factory :valuation do
    value { Faker::Number.within(range: 10000..3000000) }
    valuation_date { Faker::Date.backward(days: 30) }
    property
  end
end

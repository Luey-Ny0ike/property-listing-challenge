FactoryBot.define do
  factory :furnishing do
    property
    description { Faker::TvShows::RickAndMorty.quote }
  end
end

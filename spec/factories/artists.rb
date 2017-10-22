FactoryGirl.define do
  factory :artist do
    name        "Gloria Gaynor"
    genre       "Jazz"
    bio         { Faker::Lorem.sentence(40) }
    end
end

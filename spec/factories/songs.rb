FactoryGirl.define do
  factory :song do
    name               "I will survive"
    artist             { build(:artist) }
  end
end

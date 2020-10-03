FactoryBot.define do
  factory :kitchen do
    title { Faker::Name.name }
    text { Faker::Lorem.sentence }
    association :user
  end
end
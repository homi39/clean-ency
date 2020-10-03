FactoryBot.define do
  factory :bath do
    title { Faker::Name.name }
    text { Faker::Lorem.sentence }
    association :user
  end
end
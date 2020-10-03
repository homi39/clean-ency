FactoryBot.define do
  factory :toilet do
    title { Faker::Name.name }
    text { Faker::Lorem.sentence }
    association :user
  end
end
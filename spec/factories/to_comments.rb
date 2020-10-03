FactoryBot.define do
  factory :to_comment do
    text { Faker::Lorem.sentence }
    association :toilet
    association :user
  end
end

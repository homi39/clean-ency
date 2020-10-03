FactoryBot.define do
  factory :ba_comment do
    text { Faker::Lorem.sentence }
    association :bath
    association :user
  end
end
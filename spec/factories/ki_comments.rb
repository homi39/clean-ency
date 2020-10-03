FactoryBot.define do
  factory :ki_comment do
    text { Faker::Lorem.sentence }
    association :kitchen
    association :user
  end
end

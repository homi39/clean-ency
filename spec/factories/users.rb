FactoryBot.define do
  factory :user do
    nickname { Faker::Name.name }
    email { Faker::Internet.free_email }
    name { '戦国武将' }
    name_kana { 'センゴクブショウ' }
    gender_id { 3 }
    occupation_id { 5 }
    family_member { 3 }
    birth { '1990-1-1' }
    password = Faker::Internet.password(min_length: 6)
    password { password }
    password_confirmation { password }
  end
end
FactoryBot.define do
  factory :tea do
    # association :subscription
    title { Faker::Tea.variety }
    description { Faker::Lorem.sentence }
    temperature { 190 }
    brew_time { 2 }
  end
end

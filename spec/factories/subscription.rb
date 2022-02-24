FactoryBot.define do
  factory :subscription do
    # association :tea
    # association :customer
    title { Faker::Tea.variety }
    price { Faker::Commerce.price(range: 3.99..25.99) }
    status { rand(1..2) }
    frequency { rand(1..4) }
    quantity { rand(1..5) }
  end
end

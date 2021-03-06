FactoryBot.define do
  factory :item do
    name { Faker::Team.name }
    description { 'あいう' }
    category_id { 2 }
    detail_id { 2 }
    delivery_fee_id { 2 }
    prefectures_id  { 2 }
    days_id         { 2 }
    price           { '300' }

    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end

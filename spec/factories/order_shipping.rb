FactoryBot.define do
  factory :order_shipping do
    token { 'tok_abcdefghijk00000000000000000' }
    postal_code { '111-1111' }
    prefectures_id { 2 }
    municipalities { '岡崎市' }
    address { '5-18' }
    telephone_number { '11111111111' }

    user_id { 1 }
    item_id	{ 1 }
  end
end

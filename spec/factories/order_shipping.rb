FactoryBot.define do
  factory :order_shipping do
    token { 'tok_abcdefghijk00000000000000000' }
    postal_code { '111-1111' }
    prefectures_id { 2 }
    municipalities { '岡崎市' }
    address { '5-18' }
    building_name { '建物名' }
    telephone_number { '11111111111' }
  end
end

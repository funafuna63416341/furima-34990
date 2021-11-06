FactoryBot.define do
  factory :user do
    nickname              { Faker::Name.initials(number: 2) }
    email                 { Faker::Internet.free_email }
    password              { 'test1234' }
    password_confirmation { password }
    last_name             { 'あいう' }
    first_name            { 'かきく' }
    last_name_kana        { 'アイウ' }
    first_name_kana       { 'カキク' }
    birthday              { '1982/6/8' }
  end
end

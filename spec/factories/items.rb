FactoryBot.define do
  factory :item do
    
name       {Faker::Team.name}
description {'あいう'}
category_id {'レディース'}
detail_id      {'新品・未使用'}
delivery_fee_id {'着払い(購入者負担)'}
prefectures_id  {'北海道'}
days_id         {'１~2日で発送'}
price           {'300'}

  end
end

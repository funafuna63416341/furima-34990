

# usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|
|last_name|string|null:false|
|first_name|string|null:false|
|last_name_kana|string|null:false|
|first_name_kana|string|null:false|
|birthday|date|null: false|


## Association
- has_many :items
- has_many :purchases

# itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|description|text|null:false|
|category_id|integer|null:false|
|detail_id|integer|null:false|
|delivery_fee_id|integer|null:false|
|prefectures_id|integer|null:false|
|days_id|integer|null:false|
|price|integer|null:false|
|user|references |null:false,foreign_key: true |

## Association
- belongs_to :user
- has_one :purchase



# purchasesテーブル

|Column|Type|Options|
|------|----|-------|
|user |references|null:false,foreign_key: true |
|item |references |null:false,foreign_key: true |
## Association

- belongs_to :user
- belongs_to :item
- has_one :shipping

# Shippingsテーブル

|Column|Type|Options|
|------|----|-------|
|postal_code|string|null:false|
|prefectures_id|integer|null:false|
|municipalities|string|null:false|
|address|string|null:false|
|building_name|string|
|telephone_number|string|null:false|
|purchas=>eorders|references|null:false,foreign_key: true|


## Association
- belongs_to :purchase


後から
application_controllerに記入
  before_action :authenticate_user!


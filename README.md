

# usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|email|text|null: false|
|password|integer|null: false|
|password_verification|integer|null: false|
|last_name|string|null:false|
|first_name|string|null:false|
|last_name_kana|string|null:false|
|first_name_kana|string|null:false|
|birthday|integer|null: false|

## Association
- has_many :items
- has_many :purchase

# itemsテーブル

|Column|Type|Options|
|------|----|-------|
|image|ActiveStorage||
|name|string|null:false|
|description|text|null:false|
|detail|string|null:false|
|delivery_fee|integer|null:false|
|area|string|null:false|
|days|integer|null:false|
|price|integer|null:false|

## Association
- belongs_to :users
- belongs_to :purchase

# purchaseテーブル

|Column|Type|Options|
|------|----|-------|
|Postal_code|integer|null:false
|prefectures|string|null:false
|municipalities|string|null:false
|address|integer|null:false
|building_name|string|null:false
|telephone_number|integer|null:false



## Association
- belongs_to :users
- belongs_to :items



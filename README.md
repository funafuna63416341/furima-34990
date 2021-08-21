

# usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|
|email|string|null: false|
|encrypted_password|integer|null: false|
|last_name|string|null:false|
|first_name|string|null:false|
|last_name_kana|string|null:false|
|first_name_kana|string|null:false|
|birthday|date|null: false|

## Association
- has_many :item
- has_many :purchase

# itemsテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null:false|
|description|text|null:false|
|detail|string|null:false|
|delivery_fee|integer|null:false|
|area|string|null:false|
|prefectures_id|integer|null:false|
|price|integer|null:false|

## Association
- belongs_to :user
- belongs_to :purchase



# purchasesテーブル

|Column|Type|Options|
|------|----|-------|
|user |references|unique: true,foreign_key: true |
|item |references |foreign_key: true |
## Association

- belongs_to :user
- belongs_to :item

# Shippingsテーブル

|Column|Type|Options|
|------|----|-------|
|Postal_code|string|null:false|
|prefectures_id|integer|null:false|
|municipalities|string|null:false|
|address|string|null:false|
|building_name|string|
|telephone_number|string|null:false|
|purchase|references|foreign_key: true|





## Association


 



    users

nickname |
email
password
password_verification
last_name
first_name
last_name_kana
first_name_kana
birthday


  items

image
name
description
detail
delivery_fee
area
days
price


  sending

  Postal_code
  prefectures
  municipalities
  address
  building_name
  telephone_number

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


null: false	カラムが空の状態では保存できない
unique: true	一意性のみ許可（同じ値は保存できない）
foreign_key: true	外部キーを設定（別テーブルのカラムを参照する）
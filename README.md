
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

## Tabel名

|Column|Type|Options|
|------|----|-------|
|nickname|string|null:false|


### Association
（ここに追記していく）


null: false	カラムが空の状態では保存できない
unique: true	一意性のみ許可（同じ値は保存できない）
foreign_key: true	外部キーを設定（別テーブルのカラムを参照する）
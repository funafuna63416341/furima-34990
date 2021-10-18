class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text   :description
      t.integer :category_id
      t.integer :detail_id
      t.integer :delivery_fee_id
      t.integer :prefectures_id
      t.integer :days_id
      t.integer :price
      t.references :user
      t.timestamps
    end
  end
end

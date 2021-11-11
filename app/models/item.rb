class Item < ApplicationRecord
  belongs_to :user
  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :category
  belongs_to :detail
  belongs_to :delivery_fee
  belongs_to :prefectures
  belongs_to :days

  has_one_attached :image

  validates :image, presence: true
  validates :name, presence: true

  validates :description, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :category_id, presence: true
  validates :detail_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :detail_id, presence: true
  validates :delivery_fee_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :delivery_fee_id, presence: true
  validates :prefectures_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :prefectures_id, presence: true
  validates :days_id, numericality: { other_than: 1, message: "can't be blank" }
  validates :days_id, presence: true
  validates :price, presence: true,
                    numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9_999_999, message: 'is invalid' }

  validates :image, presence: true
end

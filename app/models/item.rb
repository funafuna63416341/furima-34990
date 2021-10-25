class Item < ApplicationRecord

  has_one_attached :image
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :detail
  belongs_to :delivery_fee
  belongs_to :prefectures
  belongs_to :days
  has_one_attached :image
  

  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :detail_id, presence: true
  validates :delivery_fee, presence: true
  validates :prefectures_id, presence: true
  validates :price, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999, message: "is invalid"}
  validates :price, presence: true

  validates :image, presence: true
  
end





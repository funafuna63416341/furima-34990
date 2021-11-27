class OrderShipping
  include ActiveModel::Model
  attr_accessor :postal_code, :prefectures_id, :municipalities, :address, :building_name, :telephone_number, :user_id, :item_id, :token,
                :order, :price

  with_options presence: true do
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :prefectures_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :municipalities
    validates :address
    validates :telephone_number, format: { with: /\A\d{10,11}\z/, message: '11桁以内' }

    # validates :purchase,      	references	null:false,foreign_key: true
    validates :token
    validates :user_id
    validates :item_id
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)

    Shipping.create(postal_code: postal_code, prefectures_id: prefectures_id, municipalities: municipalities, address: address,
                    building_name: building_name, telephone_number: telephone_number, order_id: order.id)
  end
end

require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end
  


describe '商品出品' do
  context '商品出品できる場合' do
    it '全ての値が存在すれば作成できる' do
      
    end
  end

  context '商品できない場合' do
    it 'nameが空では作成できない' do
      @item.name = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end

    it 'descriptionが空では作成できない' do
      @item.description = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Description can't be blank")
    end

    it 'category_idが空では作成できない' do
      @item.category_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank", "Category can't be blank", "Detail can't be blank", "Delivery fee can't be blank", "Prefectures can't be blank", "Days can't be blank", "Image can't be blank")
    end

    it 'detail_idが空では作成できない' do
      @item.detail_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank", "Detail can't be blank", "Detail can't be blank", "Delivery fee can't be blank", "Prefectures can't be blank", "Days can't be blank", "Image can't be blank")
    end

    it 'delivery_fee_idが空では作成できない' do
      @item.delivery_fee_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank", "Detail can't be blank", "Delivery fee can't be blank", "Delivery fee can't be blank", "Prefectures can't be blank", "Days can't be blank", "Image can't be blank")
    end
    it 'prefectures_idが空では作成できない' do
      @item.prefectures_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank", "Detail can't be blank", "Delivery fee can't be blank", "Prefectures can't be blank", "Prefectures can't be blank", "Days can't be blank", "Image can't be blank")
    end
    it 'days_idが空では作成できない' do
      @item.days_id = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Category can't be blank", "Detail can't be blank", "Delivery fee can't be blank", "Prefectures can't be blank", "Days can't be blank", "Days can't be blank", "Image can't be blank")
    end
    it 'priceが空では作成できない' do
      @item.price = ''
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
  end
end
end
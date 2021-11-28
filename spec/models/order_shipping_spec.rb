require 'rails_helper'

RSpec.describe OrderShipping, type: :model do
  describe '商品購入機能' do
    before do
      user = FactoryBot.create(:user)
      item = FactoryBot.create(:item)
      @order_shipping = FactoryBot.build(:order_shipping, user_id: user.id, item_id: item.id)
      sleep(1)
    end

    context '商品購入きる場合' do
      it '全ての値、tokenが存在すれば作成できる' do
        expect(@order_shipping).to be_valid
      end
      it '建物名は空でも保存できること' do
      end
    end

    context '商品購入できない場合' do
      it 'tokenが空では購入できないこと' do
        @order_shipping.token = nil
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Token can't be blank")
      end

      it '郵便番号が空では登録できない' do
        @order_shipping.postal_code = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Postal code can't be blank")
      end

      it '都道府県が空では登録できない' do
        @order_shipping.prefectures_id = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Prefectures can't be blank")
      end

      it '市区町村が空では登録できない' do
        @order_shipping.municipalities = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Municipalities can't be blank")
      end

      it '番地が空では登録できない' do
        @order_shipping.address = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Address can't be blank")
      end

      it '電話番号が空では登録できない' do
        @order_shipping.telephone_number = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Telephone number can't be blank")
      end

      it 'user_idが空では登録できない' do
        @order_shipping.user_id = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("User can't be blank")
      end

      it 'item_idが空では登録できない' do
        @order_shipping.item_id = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Item can't be blank")
      end

      it '都道府県に「---」が選択されている場合は登録できない' do
        @order_shipping.prefectures_id = 'o'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Prefectures can't be blank")
      end

      it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
        @order_shipping.postal_code = '1234567'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include('Postal code is invalid. Include hyphen(-)')
      end

      it '電話番号が9桁以下では購入できない' do
        @order_shipping.telephone_number = '012345678'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include('Telephone number 11桁以内')
      end

      it '電話番号が12桁以上では購入できない' do
        @order_shipping.telephone_number = '0123456789012'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include('Telephone number 11桁以内')
      end

      it '電話番号に半角数字以外が含まれている場合は購入できない' do
        @order_shipping.telephone_number = '１２３４5678901'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include('Telephone number 11桁以内')
      end
    end
  end
end

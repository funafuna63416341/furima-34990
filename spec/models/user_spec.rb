require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  



  describe 'ユーザー新規登録' do
   context '新規登録できるとき' do
    it '全ての項目が入力されていれば登録できる' do
      expect(@user).to be_valid
    end
  end

  context '新規登録できないとき' do
    it 'nicknameが空だと登録できない' do
      @user.nickname = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Nickname can't be blank"
    end


    it 'emailが空では登録できない' do
      @user.email = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Email can't be blank"
    
    end
    it 'メールアドレスは、@を含む必要があること' do
      @user.email = 'aaa'
      @user.valid?
      expect(@user.errors.full_messages).to include "Email is invalid"
    
    end

    it '重複したemailが存在する場合登録できないこと' do
      @user.save
      another_user = FactoryBot.build(:user, email: @user.email)
      another_user.valid?
      expect(another_user.errors.full_messages).to include('Email has already been taken')
    end

    it 'passwordが空では登録できない' do
      @user.password = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("Password can't be blank")
    end

    it 'パスワードは、6文字以上での入力が必須であること' do
      @user.password = 'abc45'
      @user.password_confirmation = 'abc45'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
    end

    it 'パスワードとパスワード（確認用）、値の一致が必須であること' do
      @user.password = '123456'
      @user.password_confirmation = '1234567'
      @user.valid?
      expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end

    it 'パスワードが英語のみでは登録できない' do
      @user.password = 'abcdef'
      @user.valid?
      
      expect(@user.errors.full_messages).to include ("Password には英字と数字の両方を含めて設定してください")
    end
   

    it '数字のみのパスワードでは登録できない' do
      @user.password = '123456'
      @user.valid?
      
      expect(@user.errors.full_messages).to include ("Password には英字と数字の両方を含めて設定してください")
    end

    it '全角文字を含むパスワードでは登録できない' do
      @user.password = 'あいうえおか'
      @user.valid?
      
      expect(@user.errors.full_messages).to include ("Password には英字と数字の両方を含めて設定してください")
    end

    it 'last_nameが空だと登録できない' do
      @user.last_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("Last name can't be blank")
    end

    it '姓（全角）に半角文字が含まれていると登録できない' do
      @user.last_name = 'abcd'
      @user.valid?
      expect(@user.errors.full_messages).to include ("Last name 全角日本語を使用してください")
    end

    it '名（全角）に半角文字が含まれていると登録できない' do
      @user.first_name = 'abcd'
      @user.valid?
      expect(@user.errors.full_messages).to include ("First name 全角日本語を使用してください")
    end

    it 'first_nameが空だと登録できない' do
      @user.first_name = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("First name can't be blank")
    end

    it 'last_name_kanaが空だと登録できない' do
      @user.last_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("Last name kana can't be blank")
    end

    it 'first_name_kanaが空だと登録できない' do
      @user.first_name_kana = ''
      @user.valid?
      expect(@user.errors.full_messages).to include ("First name kana can't be blank")
    end

    it '姓（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
      @user.last_name_kana = 'すずき'
      @user.valid?
      expect(@user.errors.full_messages).to include('Last name kana 全角カタカナを使用してください')
    end

    it '名（カナ）にカタカナ以外の文字（平仮名・漢字・英数字・記号）が含まれていると登録できない' do
      @user.first_name_kana = 'すずき'
      @user.valid?
      expect(@user.errors.full_messages).to include('First name kana 全角カタカナを使用してください')
    end

    it 'birthdayが空だと登録できない' do
      @user.birthday = ''
      @user.valid?
      expect(@user.errors.full_messages).to include "Birthday can't be blank"
    end

   end
  end
end



require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe '新規ユーザー登録' do
    context '新規登録がうまくいくとき' do
      it '全ての値が正しく入力されていれば保存できる' do
        expect(@user).to be_valid
      end
      it 'emailに＠が含まれていれば登録できる' do
        @user.email = 'aaa@aaa'
        expect(@user).to be_valid
      end
      it 'パスワードが6文字以上、半角英数字混合であれば登録できる' do
        @user.password = 'abc123'
        @user.password_confirmation = 'abc123'
        expect(@user).to be_valid
      end
      it 'ユーザー名が全角(漢字・平仮名・カタカナ)で入力されていれば登録できる' do
        @user.name = '戦国武将'
        expect(@user).to be_valid
      end
      it 'ユーザー名のフリガナがカタカナで入力されていれば登録できる' do
        @user.name_kana = 'センゴクブショウ'
        expect(@user).to be_valid
      end
    end

    context '新規登録がうまくいかないとき' do
      it 'nicknameが空だと登録できない' do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空だと登録できない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'emailが重複していると登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include('Email has already been taken')
      end
      it 'emailに＠が含まれていないと登録できない' do
        @user.email = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Email is invalid')
      end
      it 'パスワードが空だと登録できない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'パスワードが5文字未満の場合は登録できない' do
        @user.password = 'ab000'
        @user.password_confirmation = 'ab000'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'パスワードが数字のみでは登録できない' do
        @user.password = '000000'
        @user.password_confirmation = '000000'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワードが英字のみでは登録できない' do
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'パスワードと確認用パスワードが一致しなければ登録できない' do
        @user.password_confirmation = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'ユーザー本名が空では登録できない' do
        @user.name = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Name can't be blank")
      end
      it 'ユーザー本名が全角(漢字・平仮名・カタカナ)で入力されていなければ登録できない' do
        @user.name = 'ｾﾝｺﾞｸﾌﾞｼｮｳ'
        @user.valid?
        expect(@user.errors.full_messages).to include('Name is invalid')
      end
      it 'ユーザー本名のフリガナ名字が空だと登録できない' do
        @user.name_kana = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Name kana can't be blank")
      end
      it 'ユーザー本名のフリガナ名字が全角カタカナでないと登録できない' do
        @user.name_kana = 'ｾﾝｺﾞｸﾌﾞｼｮｳ'
        @user.valid?
        expect(@user.errors.full_messages).to include('Name kana is invalid')
      end
      it '職業選択欄が空だと登録できない' do
        @user.occupation_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Occupation can't be blank")
      end
      it '性別欄が空だと登録できない' do
        @user.gender_id = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Gender can't be blank")
      end
      it '同居人数が空だと登録できない' do
        @user.family_member = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Family member can't be blank")
      end
      it '生年月日が空だと登録できない' do
        @user.birth = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Birth can't be blank")
      end
    end
  end
end

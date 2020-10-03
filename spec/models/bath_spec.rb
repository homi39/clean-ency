require 'rails_helper'

RSpec.describe Bath, type: :model do
  describe 'Bathに関する記事を投稿する' do
    before do
      @bath = FactoryBot.build(:bath)
    end

    it '全ての値が正しく入力されていれば投稿できる' do
      expect(@bath).to be_valid
    end
    it 'ログインしていないと投稿できない' do
      @bath.user = nil
      @bath.valid?
      expect(@bath.errors.full_messages).to include('User must exist')
    end
    it 'タイトルがないと投稿できない' do
      @bath.title = nil
      @bath.valid?
      expect(@bath.errors.full_messages).to include("Title can't be blank")
    end
    it 'テキストがないと投稿できない' do
      @bath.text = nil
      @bath.valid?
      expect(@bath.errors.full_messages).to include("Text can't be blank")
    end
  end
end
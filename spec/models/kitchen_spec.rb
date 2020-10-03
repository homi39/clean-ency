require 'rails_helper'

RSpec.describe Kitchen, type: :model do
  describe 'Kitchenに関する記事を投稿する' do
    before do
      @kitchen = FactoryBot.build(:kitchen)
    end

    it '全ての値が正しく入力されていれば投稿できる' do
      expect(@kitchen).to be_valid
    end
    it 'ログインしていないと投稿できない' do
      @kitchen.user = nil
      @kitchen.valid?
      expect(@kitchen.errors.full_messages).to include('User must exist')
    end
    it 'タイトルがないと投稿できない' do
      @kitchen.title = nil
      @kitchen.valid?
      expect(@kitchen.errors.full_messages).to include("Title can't be blank")
    end
    it 'テキストがないと投稿できない' do
      @kitchen.text = nil
      @kitchen.valid?
      expect(@kitchen.errors.full_messages).to include("Text can't be blank")
    end
  end
end

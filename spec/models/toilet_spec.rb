require 'rails_helper'

RSpec.describe Toilet, type: :model do
  describe 'Toiletに関する記事を投稿する' do
    before do
      @toilet = FactoryBot.build(:toilet)
    end

    it '全ての値が正しく入力されていれば投稿できる' do
      expect(@toilet).to be_valid
    end
    it 'ログインしていないと投稿できない' do
      @toilet.user = nil
      @toilet.valid?
      expect(@toilet.errors.full_messages).to include('User must exist')
    end
    it 'タイトルがないと投稿できない' do
      @toilet.title = nil
      @toilet.valid?
      expect(@toilet.errors.full_messages).to include("Title can't be blank")
    end
    it 'テキストがないと投稿できない' do
      @toilet.text = nil
      @toilet.valid?
      expect(@toilet.errors.full_messages).to include("Text can't be blank")
    end
  end
end

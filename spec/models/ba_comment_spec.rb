require 'rails_helper'

RSpec.describe BaComment, type: :model do
  describe 'Bathに関する記事へコメントする' do
    before do
      @bacomment = FactoryBot.build(:ba_comment)
    end

    it 'textが入力されていればコメントできる' do
      expect(@bacomment).to be_valid
    end

    it 'textが空ではコメントできない' do
      @bacomment.text = nil
      @bacomment.valid?
      expect(@bacomment.errors.full_messages).to include("Text can't be blank")
    end

  end
end
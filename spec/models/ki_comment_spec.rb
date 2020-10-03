require 'rails_helper'

RSpec.describe KiComment, type: :model do
  describe 'Kitchenに関する記事へコメントする' do
    before do
      @kicomment = FactoryBot.build(:ki_comment)
    end

    it 'textが入力されていればコメントできる' do
      expect(@kicomment).to be_valid
    end

    it 'textが空ではコメントできない' do
      @kicomment.text = nil
      @kicomment.valid?
      expect(@kicomment.errors.full_messages).to include("Text can't be blank")
    end

  end
end

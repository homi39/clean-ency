require 'rails_helper'

RSpec.describe ToComment, type: :model do
  describe 'Bathに関する記事へコメントする' do
    before do
      @tocomment = FactoryBot.build(:to_comment)
    end

    it 'textが入力されていればコメントできる' do
      expect(@tocomment).to be_valid
    end

    it 'textが空ではコメントできない' do
      @tocomment.text = nil
      @tocomment.valid?
      expect(@tocomment.errors.full_messages).to include("Text can't be blank")
    end

  end
end

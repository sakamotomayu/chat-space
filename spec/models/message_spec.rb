require 'rails_helper'

describe Message do
  describe '#create' do
    it 'is valid with a text' do
      message = build(:message)
      expect(message).to be_valid
    end

    it 'is valid with a image' do
      message = build(:message)
      expect(message).to be_valid
    end

    it 'is valid with a text, image' do
      message = build(:message)
      expect(message).to be_valid
    end

    it 'is invalid without a text, image' do
      message = build(:message, text: nil, image: nil)
      message.valid?
      expect(message.errors[:text, :image]).to include("メッセージを入力してください")
    end

    it 'is invalid without a group_id' do
      message = build(:message, group_id: nil)
      message.valid?
      expect(message.errors[:group_id]).to include("can't be blank")
    end

    it 'is invalid without a user_id' do
      message = build(:message, user_id: nil)
      message.valid?
      expect(message.errors[:user_id]).to include("can't be blank")
    end

  end
end

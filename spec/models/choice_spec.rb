require 'rails_helper'

RSpec.describe Choice, type: :model do
  describe 'バリデーション確認' do
    it '有効であること' do
      choice = build(:choice)
      expect(choice).to be_valid
      expect(choice.errors).to be_empty
    end

    it 'countentがない場合、無効' do
      choice = build(:choice, content: nil)
      expect(choice).to be_invalid
    end

    it 'is_answerがない場合、無効' do
      choice = build(:choice, is_answer: nil)
      expect(choice).to be_invalid
      expect(choice.errors[:is_answer]).to eq ["を入力してください"]
    end

    it 'quiz_idがない場合、無効' do
      choice = build(:choice, quiz_id: nil)
      expect(choice).to be_invalid
    end
  end
end

require 'rails_helper'

RSpec.describe Quiz, type: :model do
  describe 'バリデーション確認' do
    it '有効であること' do
      quiz = build(:quiz)
      expect(quiz).to be_valid
      expect(quiz.errors).to be_empty
    end

    it 'color_idがない場合、無効' do
      quiz = build(:quiz, color_id: nil)
      expect(quiz).to be_invalid
    end

    it 'quiz_formatがない場合、無効' do
      quiz = build(:quiz, quiz_format: nil)
      expect(quiz).to be_invalid
      expect(quiz.errors[:quiz_format]).to eq ["を入力してください"]
    end
  end
end

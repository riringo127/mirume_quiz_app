require 'rails_helper'

RSpec.describe User, type: :model do
  let(:created_user) { create(:user) }

  describe 'バリデーション確認' do
    it '有効であること' do
      user = build(:user)
      expect(user).to be_valid
      expect(user.errors).to be_empty
    end

    it '名前がない場合、無効' do
      user = build(:user, name: nil)
      expect(user).to be_invalid
      expect(user.errors[:name]).to eq ["を入力してください"]
    end

    it '名前が255文字より大きい場合、無効' do
      user = build(:user, name: 'a' * 256)
      expect(user).to be_invalid
      expect(user.errors[:name]).to eq ["は255文字以内で入力してください"]
    end

    it 'メールアドレスがない場合、無効' do
      user = build(:user, email: nil)
      expect(user).to be_invalid
      expect(user.errors[:email]).to eq ["を入力してください"]
    end

    it '重複したメールアドレスの場合、無効' do
      user = build(:user, email: created_user.email)
      expect(user).to be_invalid
      expect(user.errors[:email]).to eq ["はすでに存在します"]
    end

    it "パスワードがない場合、無効" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to eq ["は6文字以上で入力してください"]
    end

    it "パスワードが6文字より小さい場合、無効" do
      user = build(:user, password: 'a' * 5)
      user.valid?
      expect(user.errors[:password]).to eq ["は6文字以上で入力してください"]
    end

    it "パスワード確認がない場合、無効" do
      user = build(:user, password_confirmation: nil)
      user.valid?
      expect(user.errors[:password_confirmation]).to eq ["を入力してください"]
    end

    it "パスワードとパスワード確認が一致していない場合、無効" do
      user = build(:user, password_confirmation: "abcdefgh")
      user.valid?
      expect(user.errors[:password_confirmation]).to eq ["とパスワードの入力が一致しません"]
    end
  end
end

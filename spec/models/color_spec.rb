require 'rails_helper'

RSpec.describe Color, type: :model do
  let(:created_color) { create(:color) }

  describe 'バリデーション確認' do
    it '有効であること' do
      color = build(:color)
      expect(color).to be_valid
      expect(color.errors).to be_empty
    end

    it '名前がない場合、無効' do
      color = build(:color, name: nil)
      expect(color).to be_invalid
      expect(color.errors[:name]).to eq ["を入力してください"]
    end

    it '重複した名前の場合、無効' do
      color = build(:color, name: created_color.name)
      expect(color).to be_invalid
      expect(color.errors[:name]).to eq ["はすでに存在します"]
    end

    it 'コードがない場合、無効' do
      color = build(:color, code: nil)
      expect(color).to be_invalid
      expect(color.errors[:code]).to eq ["を入力してください"]
    end

    it '重複したコードの場合、無効' do
      color = build(:color, code: created_color.code)
      expect(color).to be_invalid
      expect(color.errors[:code]).to eq ["はすでに存在します"]
    end

    it 'cssクラスがない場合、無効' do
      color = build(:color, css_class: nil)
      expect(color).to be_invalid
      expect(color.errors[:css_class]).to eq ["を入力してください"]
    end

    it '重複したcss_classの場合、無効' do
      color = build(:color, css_class: created_color.css_class)
      expect(color).to be_invalid
      expect(color.errors[:css_class]).to eq ["はすでに存在します"]
    end

    it 'category_idがない場合、無効' do
      color = build(:color, category_id: nil)
      expect(color).to be_invalid
    end
  end
end

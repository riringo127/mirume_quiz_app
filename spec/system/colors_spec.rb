require 'rails_helper'

RSpec.describe "Colors", type: :system do
  let(:user) { create(:user) }
  let(:color) { create(:color) }

  describe 'ログイン前' do
    describe 'ページ遷移確認' do
      context '色一覧ページにアクセス' do
        it '色一覧ページへのアクセスが失敗する' do
          visit colors_path
          expect(page).to have_content('ログインしてください')
          expect(current_path).to eq login_path
        end
      end

      context '色の詳細ページにアクセス' do
        it '色詳細ページへのアクセスが失敗する' do
          visit color_path(color)
          expect(page).to have_content('ログインしてください')
          expect(current_path).to eq login_path
        end
      end
    end
  end

  describe 'ログイン後' do
    before { login_as(user) }

    describe 'ページ表示確認' do
      context '色一覧ページにアクセス' do
        it '色一覧が表示される' do
          color_list = create_list(:color, 3)
          visit colors_path
          expect(page).to have_content color_list[0].name
          expect(page).to have_content color_list[1].name
          expect(page).to have_content color_list[2].name
          expect(current_path).to eq colors_path
        end
      end

      context '色詳細ページにアクセス' do
        it '色詳細が表示される' do
          visit color_path(color)
          expect(page).to have_content color.name
          expect(current_path).to eq color_path(color)
        end
      end
    end
  end
end

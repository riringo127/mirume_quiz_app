require 'rails_helper'

RSpec.describe "Users", type: :system do
  let(:user) { create(:user) }

  describe 'ログイン前' do
    describe 'ユーザー新規作成' do
      context '正常系' do
        it 'ユーザーの新規作成ができる' do
          visit new_user_path
          fill_in 'ユーザー名', with: 'test01'
          fill_in 'メールアドレス', with: 'test01@example.com'
          fill_in 'パスワード', with: 'password'
          fill_in 'パスワード確認', with: 'password'
          expect { click_button '登録' }.to change { User.count }.by(1)
          expect(page).to have_content 'アカウントを作成しました'
        end
      end
  
      context '異常系' do
        it 'メールアドレスが未入力な場合、ユーザーの新規作成ができない' do
          visit new_user_path
          fill_in 'ユーザー名', with: 'test01'
          fill_in 'メールアドレス', with: ''
          fill_in 'パスワード', with: 'password'
          fill_in 'パスワード確認', with: 'password'
          expect { click_button '登録' }.to change { User.count }.by(0)
          expect(current_path).to eq users_path
          expect(page).to have_content 'アカウント作成に失敗しました'
          expect(page).to have_content 'メールアドレスを入力してください'
        end
  
        it 'メールアドレスが登録済な場合、ユーザーの新規作成ができない' do
          existed_user = create(:user)
          visit new_user_path
          fill_in 'ユーザー名', with: 'test01'
          fill_in 'メールアドレス', with: existed_user.email
          fill_in 'パスワード', with: 'password'
          fill_in 'パスワード確認', with: 'password'
          expect { click_button '登録' }.to change { User.count }.by(0)
          expect(current_path).to eq users_path
          expect(page).to have_content 'アカウント作成に失敗しました'
          expect(page).to have_content 'メールアドレスはすでに存在します'
        end
      end
    end

    describe 'アカウント設定' do
      context 'ログインしていない状態' do
        it 'アカウント設定ページへのアクセスが失敗する' do
          visit account_path
          expect(page).to have_content('ログインしてください')
          expect(current_path).to eq login_path
         end
      end 
    end
  end

  describe 'ログイン後' do
    before { login_as(user) }

    describe 'アカウント編集' do
      context 'フォームの入力値が正常' do
        it 'アカウントの編集が成功する' do
          visit edit_account_path(user)
          fill_in 'ユーザー名', with: 'update01'
          fill_in 'メールアドレス', with: 'update@example.com'
          click_button '更新する'
          expect(page).to have_content('アカウントを更新しました')
          expect(current_path).to eq account_path
        end
      end
      
      context 'ユーザー名が未入力' do
        it 'アカウントの編集が失敗する' do
          visit edit_account_path(user)
          fill_in 'ユーザー名', with: ''
          fill_in 'メールアドレス', with: 'update@example.com'
          click_button '更新する'
          expect(page).to have_content('アカウントを更新できませんでした')
          expect(page).to have_content('ユーザー名を入力してください')
          expect(current_path).to eq account_path
        end
      end

      context 'メールアドレスが未入力' do
        it 'アカウントの編集が失敗する' do
          visit edit_account_path(user)
          fill_in 'ユーザー名', with: 'update01'
          fill_in 'メールアドレス', with: ''
          click_button '更新する'
          expect(page).to have_content('アカウントを更新できませんでした')
          expect(page).to have_content('メールアドレスを入力してください')
          expect(current_path).to eq account_path
        end
      end

      context '登録済みのメールアドレスを使用' do
        it 'アカウントの編集が失敗する' do
          visit edit_account_path(user)
          other_user = create(:user)
          fill_in 'ユーザー名', with: 'update01'
          fill_in 'メールアドレス', with: other_user.email
          click_button '更新する'
          expect(page).to have_content('アカウントを更新できませんでした')
          expect(page).to have_content('メールアドレスはすでに存在します')
          expect(current_path).to eq account_path
        end
      end
    end
  end
end

Rails.application.routes.draw do
  root 'static_pages#top'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  get 'dashboard', to: 'dashboards#top'
  get 'review', to: 'reviews#top'

  resources :users, only: %i[new create]
  resource :account, only: %i[show edit update destroy]

  resources :colors, only: %i[index show]
  resources :quizzes, only: %i[index] do
    resources :incorrect_answers, only: %i[create destroy]
    resources :correct_answers, only: %i[create]
    collection do
      get :mistakes
    end
  end
end

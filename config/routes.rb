Rails.application.routes.draw do
  devise_for :users, controllers:
  { sessions: 'users/sessions' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    resources :lessons, only: [] do
      resources :lesson_progresses, only: [:index, :update]
    end
  end

  namespace :api do
    resources :lessons, only: [:index]
  end

  resources :lessons do
    resources :lesson_progresses, only: [:index, :show, :create, :update]
    resources :lesson_steps, only: [:index] do
      member do
        get 'pop_up'
      end
    end
  end
end

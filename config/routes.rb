Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :lesson, only: [:index, :show] do
    resources :lesson_progress, only: [:index, :show, :create, :update]
    resources :lesson_step, only: [:index] do
      member do
        get 'pop_up'
      end
    end
  end
end

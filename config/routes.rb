Rails.application.routes.draw do
  # devise_for :users, controllers: { sessions: "sessions"}

  namespace :api do
    namespace :v1 do
      resources :user_programs
      resources :contents
      resources :users
      resources :programs
      binding.pry
      post "/users/sign_in", to: "sessions#create"
      post "/users/sign_up", to: "users#create"
      post 'programs', to: 'programs#index'
      get 'users/me', to: 'users#me'
    end
  end
end

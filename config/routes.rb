Rails.application.routes.draw do
  # devise_for :users, controllers: { sessions: "sessions"}

  namespace :api do
    namespace :v1 do
      resources :user_programs
      resources :posts
      resources :users
      resources :programs
      post "/users/sign_in", to: "sessions#create"
      post "/users/sign_up", to: "users#create"
      post 'programs', to: 'programs#index'
      post 'posts', to: 'posts#index'
      post 'programs/:id', to: 'programs#show'
      post 'programs/new', to: 'programs#create'
    end
  end
end

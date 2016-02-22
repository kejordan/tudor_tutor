Rails.application.routes.draw do
  # devise_for :users, controllers: { sessions: "sessions"}

  namespace :api do
    namespace :v1 do
      resources :user_programs
      resources :contents
      resources :users
      resources :programs
    end
  end
  
  post "/users/sign_in", to: "sessions#create"
  post "/users/sign_up", to: "users#create"
  post 'program', to: 'programs#index'

end

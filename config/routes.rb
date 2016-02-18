Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :user_programs
      resources :contents
      resources :users
      resources :programs
    end
  end
  post "/users/sign_in", to: "sessions#create"
end

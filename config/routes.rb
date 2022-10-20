Rails.application.routes.draw do
  resources :user_trasactions
  resources :categories
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to:"home#index"
end

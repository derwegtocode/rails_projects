Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "posts#index"

  get "user_posts", to: "posts#index"

  resources :posts, only: [:create, :new, :index, :show]
end

Rails.application.routes.draw do
  devise_for :users
  resources :events
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "events#index"
  get "users/events", to: "users#show"
  get "/users/:id/attended_events", to: "users#show_attended_events", as: "show_attended_events"
  post "/users/:user_id/events/:id", to: "events_attendance#create", as: "create_attending_event"
  delete "/users/:user_id/events/:id", to: "events_attendance#destroy", as: "destroy_attending_event"
end

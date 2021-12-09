Rails.application.routes.draw do
  resources :attendances, only: [:create, :destroy, :index]
  resources :events
  resources :locations
  resources :users


  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/host", to: "attendances#host"
  get "/attending", to: "attendances#attending"
  get "/attending_not_host", to: "attendances#attending_not_host"
  # get "/others", to: "attendances#other_attendances"

  get "/parties", to: "attendances#parties"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

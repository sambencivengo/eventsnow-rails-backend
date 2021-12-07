Rails.application.routes.draw do
  resources :attendances
  resources :events
  resources :locations
  resources :users
  resources :tests
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  root to: "virus#index"

  resources :virus, only: :index
  resources :records, only: [:index, :create]
  resources :donation, only: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

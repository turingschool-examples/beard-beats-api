Rails.application.routes.draw do
  resources :songs, only: [:index, :show], format: :json
  resources :albums, only: [:index, :show]
  resources :artists, only: [:index, :show]
end

Rails.application.routes.draw do
  resources :artists
  resources :songs
  resources :genres
  root 'application#index'
end

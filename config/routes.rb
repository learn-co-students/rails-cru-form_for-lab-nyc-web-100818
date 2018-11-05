Rails.application.routes.draw do
  resources :artists
  resources :genres
  resources :songs

  # post '/artists/new', to: 'artist#create'

end

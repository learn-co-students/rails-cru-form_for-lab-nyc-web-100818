Rails.application.routes.draw do
  resources :artists
  resources :genres
  resources :songs
end
# shouldn't we do other format to limit the controller methods or no?

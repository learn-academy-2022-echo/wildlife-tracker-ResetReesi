Rails.application.routes.draw do
  resources :sightings
  resources :animals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/animals' => 'animals#1'
  post 'sightings' => 'sightings#create'
  patch 'sightings/:id' => 'sightings#update'
  delete 'sightings/:id' => 'sightings#destroy'
end


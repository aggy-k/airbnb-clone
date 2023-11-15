Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/flats', to: 'flats#index', as: :flats
  get '/flats/:id', to: 'flats#detail', as: :flat
end

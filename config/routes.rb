Rails.application.routes.draw do
  resources :bookings
  resources :services
  resources :usrs
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #get user routes
 # Usrs Routes
 get '/', to: 'usrs#index'
 post '/usrs', to: 'usrs#create'
 get '/usrs/:id', to: 'usrs#show'
 patch '/usrs/:id', to: 'usrs#update'
 delete '/usrs/:id', to: 'usrs#destroy'
  # Service Routes
  get '/services', to: 'services#index'
  post '/services', to: 'services#create'
  get '/services/:id', to: 'services#show'
  patch '/services/:id', to: 'services#update'
  delete '/services/:id', to: 'services#destroy'
  # Booking Routes
  get '/bookings', to: 'bookings#index'
  post '/bookings', to: 'bookings#create'
  get '/bookings/:id', to: 'bookings#show'
  patch '/bookings/:id', to: 'bookings#update'
  delete '/bookings/:id', to: 'bookings#destroy'
end

Rails.application.routes.draw do
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
end

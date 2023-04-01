Rails.application.routes.draw do
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
end

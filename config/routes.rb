Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'application#index'
  
  get '/dashboard', to: 'dashboard#index'
  
  get '/database', to: 'database#index'
  
  get '/database/resident/:name', to: 'database#show'
  
  get '/database/add', to: 'database#add'
  post '/database/add',  to: 'database#save'
  
  get '/login', to: 'login#index'
  post '/login', to: 'login#login'
  get '/logout', to: 'users#logout'
  
  get '/register', to: 'register#index'
  post '/register', to: 'register#register'
  
end

Rails.application.routes.draw do
 
 devise_for :users
 root to:  "toys#index"
 
 get '/toys' => 'toys#index' #REST
 get '/one' => 'toys#one'
 get '/all' => 'toys#all'

 get '/toys/new' => 'toys#new'
 post '/toys' => 'toys#create'


 get '/toys/:id' => 'toys#show'

 delete '/toys/:id' => 'toys#destroy'

 post '/orders' => 'orders#create'
 get '/orders/:id' => 'orders#show'

 post '/carted_products' => 'carted_products#create'
 get '/carted_products/:id' => 'carted_products#show'

 post '/carted' => 'carted_products#index'
 get '/carted/:id' => 'carted_products#create' 

end
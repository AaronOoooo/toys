Rails.application.routes.draw do
 
 devise_for :users
 root to:  "toys#index"
 #REST
 get '/toys' => 'toys#index'

 get '/toys/new' => 'toys#new'
 post '/toys' => 'toys#create'

 get '/toys/:id' => 'toys#show'

 get '/toys/:id/edit' => 'toys#edit'
 patch '/toys/:id' => 'toys#update'

 delete '/toys/:id' => 'toys#destroy'

 post '/orders' => 'orders#create'
 get '/orders/:id' => 'orders#show'

 get '/cart' => 'carted_products#index'
 post '/carted_products/' => 'carted_products#create'

 delete '/carted_novelties/:id' => 'carted_products#destroy'

 
end
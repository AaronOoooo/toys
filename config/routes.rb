Rails.application.routes.draw do
 get '/' => 'toys#index' #REST
 get '/toys' => 'toys#index' #REST
 get '/one' => 'toys#one'
 get '/all' => 'toys#all'

 get '/toys/new' => 'toys#new'
 post '/toys' => 'toys#create'

 get '/toys/:id' => 'toys#show'
end

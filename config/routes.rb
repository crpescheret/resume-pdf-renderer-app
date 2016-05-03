Rails.application.routes.draw do
  
  get '/' =>'pages#index'
  get '/pages/new' => 'pages#new'
  get '/pages/:id' => 'pages#show'
  post '/pages' => 'pages#create'
  get '/pages/'

end

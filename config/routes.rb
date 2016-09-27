Rails.application.routes.draw do
  get '/games' => 'games#index'
  get '/games/:id/' => 'games#show'
  post '/games' => 'games#create'
  patch '/games/:id' => 'games#update'
  delete '/games/:id' => 'games#destroy'

end

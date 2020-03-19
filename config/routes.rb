Rails.application.routes.draw do

  get '/fancy', to: 'songs#fancy'

  get '/songs', to: 'songs#index'
  get '/artists', to: 'artists#index'
  get '/songs/:id', to: 'songs#show'
end

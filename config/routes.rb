Rails.application.routes.draw do

  get '/fancy', to: 'songs#fancy'

  get '/songs', to: 'songs#index'
  get '/artists', to: 'artists#index'
  get '/songs/:id', to: 'songs#show'

  get '/artists/new', to: 'artists#new'
  post '/artists', to: 'artists#create'
  get '/artists/:id', to: 'artists#show'
  delete '/artists/:id', to: 'artists#destroy'

  get '/artists/:artist_id/songs/new', to: 'songs#new'
  post '/artists/:artist_id/songs', to: 'songs#create'

end

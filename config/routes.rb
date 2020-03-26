Rails.application.routes.draw do

  get '/fancy', to: 'songs#fancy'

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'

  get '/artists', to: 'artists#index'
  get '/artists/new', to: 'artists#new'
  post '/artists', to: 'artists#create'
  get '/artists/:id', to: 'artists#show'
  delete '/artists/:id', to: 'artists#destroy'
  get '/artists/:id/edit', to: 'artists#edit'
  put '/artists/:id', to: 'artists#update'

  get '/artists/:artist_id/songs/new', to: 'songs#new'
  post '/artists/:artist_id/songs', to: 'songs#create'

  get '/playlists', to: 'playlists#index'

  patch '/cart/:song_id', to: 'cart#update'
end

Rails.application.routes.draw do
  root 'welcome#index'

  get '/fancy', to: 'songs#fancy'

  namespace :admin do
    get '/dashboard', to: "dashboard#index"
  end

  get '/users/new', to: 'users#new'
  post '/users', to: 'users#create'

  get '/profile', to: 'users#show'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/songs', to: 'songs#index'
  get '/songs/:id', to: 'songs#show'

  get '/artists', to: 'artists#index'
  get '/artists/:id', to: 'artists#show'
  get '/artists/new', to: 'artists#new'
  post '/artists', to: 'artists#create'
  delete '/artists/:id', to: 'artists#destroy'
  get '/artists/:id/edit', to: 'artists#edit'
  patch '/artists/:id', to: 'artists#update'

  get '/artists/:artist_id/songs/new', to: 'songs#new'
  post '/artists/:artist_id/songs', to: 'songs#create'

  get '/playlists', to: 'playlists#index'

  patch '/cart/:song_id', to: 'cart#update'
end

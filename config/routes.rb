Rails.application.routes.draw do

  get '/fancy', to: 'songs#fancy'

  get '/songs', to: 'songs#index'
end

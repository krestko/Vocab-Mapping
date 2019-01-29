Rails.application.routes.draw do
  get '/', to: 'users#new'

  get '/users/:id', to: 'users#show'

  get '/users/:id/edit', to:
  'users#edit'

  post '/users', to: 'users#create'

  put '/users/:id', to: 'users#update'

  delete '/users/:id', to: 'users#destroy'

  get '/users/:id/routes', to: 'routes#index'

  get '/users/:id/routes/new', to: 'routes#new'

  get '/users/:id/routes/:id', to: 'routes#show'

  get '/users/:id/routes/:id/edit', to: 'routes#edit'

  post '/users/:id/routes', to: 'routes#create'

  put '/users/:id/routes/:id', to: 'routes#update'

  delete '/users/:id/routes/:id', to: 'routes#destroy'

  get '/users/:id/routes/:id/coordinates', to: 'coordinates#index'

  get '/users/:id/routes/:id/coordinates/new', to: 'coordinates#new'

  get '/users/:id/routes/:id/coordinates/:id', to: 'coordinates#show'

  get '/users/:id/routes/:id/coordinates/:id/edit', to: 'coordinates#edit'

  post '/users/:id/routes/:id/coordinates', to: 'coordinates#create'

  put '/users/:id/routes/:id/coordinates/:id', to: 'coordinates#update'

  delete '/users/:id/routes/:id/coordinates/:id', to: 'coordinates#destroy'
end

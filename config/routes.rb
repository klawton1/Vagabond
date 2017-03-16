Rails.application.routes.draw do
  root to: 'users#index'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update', as: 'update_user'


  get '/cities/:id', to: 'cities#show', as: 'city'

  get '/comments/new/:city_id', to: 'comments#new', as: 'new_comment'
  post '/comments', to: 'comments#create'
  get '/comments/:id', to: 'comments#show', as: 'comment'
  get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  patch '/comments/:id', to: 'comments#update'
  delete '/comments/:id/delete', to: 'comment#destroy'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'
end

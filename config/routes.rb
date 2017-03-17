Rails.application.routes.draw do
  root to: 'users#index'

  get '/users/new', to: 'users#new', as: 'new_user'
  post '/users', to: 'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  patch '/users/:id', to: 'users#update', as: 'update_user'


  get '/cities/:id', to: 'cities#show', as: 'city'
  get 'cities/:city_id/comments/new', to: 'comments#new', as: 'new_comment'

  post '/comments', to: 'comments#create'
  get '/comments/:id', to: 'comments#show', as: 'comment'
  get '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  patch '/comments/:id', to: 'comments#update'
  delete '/comments/:id', to: 'comments#destroy'
  
  get '/comments/:id/feedbacks/new', to: 'feedbacks#new', as: 'new_feedback'
  post '/comments/:id/feedbacks/', to: 'feedbacks#create', as: 'feedbacks'
  get '/feedbacks/:id/edit', to: 'feedbacks#edit', as: 'edit_feedback'
  patch '/feedbacks/:id', to:'feedbacks#update'
  delete '/feedbacks/:id', to: 'feedbacks#destroy', as: 'delete_feedback'

  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  post '/sessions', to: 'sessions#create'
end

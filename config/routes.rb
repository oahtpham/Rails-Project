Rails.application.routes.draw do

  root 'users#index'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  get '/users/:id/edit', to: 'users#edit', as: 'user_edit'
  get '/users/:id', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#delete'
  post '/users/search', to: 'users#search', as: 'search'

  get '/blogs/new', to: 'blogs#new'
  get '/blogs/:id', to: 'blogs#show', as: 'blog'
  post '/blog/:id/comments', to: 'comments#add_comment', as: 'add_comment'
  post '/blogs', to: 'blogs#create', as: 'create_post'
  post '/blogs/:id', to: 'likes#create', as: 'like_blog'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

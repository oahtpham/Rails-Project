Rails.application.routes.draw do
  resources :blogs, except: :index

  root 'users#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'

  post '/users/search', to: 'users#search', as: 'search'

  get '/users', to: 'users#index'
  get '/users/new', to: 'users#new'
  get '/users/:user_name/edit', to: 'users#edit', as: 'edit_user'
  get '/users/:user_name', to: 'users#show', as: 'user'
  post '/users', to: 'users#create'
  patch '/users/:user_name', to: 'users#update'
  delete '/users/:user_name', to: 'users#delete'


  get '/:user_name/welcome', to: 'welcome#home', as: 'welcome'

  # get '/blogs/new', to: 'blogs#new'
  # get '/blogs/:id', to: 'blogs#show', as: 'blog'
  # get '/blogs/:id/edit', to: 'blogs#edit', as: 'edit_blog'
  #
  # post '/blogs', to: 'blogs#create', as: 'create_post'
  #
  # patch 'blogs/:id', to: 'blogs#update'
  # delete '/blogs/:id', to: 'blogs#delete'

  post '/blogs/:id', to: 'likes#create', as: 'like_blog'
  post '/blogs/:id/comments', to: 'comments#add_comment', as: 'add_comment'
  get 'comments', to: 'comments#destroy', as: 'delete_comment'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

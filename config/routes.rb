Rails.application.routes.draw do
  get '/posts/new', to: 'posts#new', as:'new_post'
  post '/posts/new', to: 'posts#create', as:'create_post'
  get '/posts/:id', to: 'posts#show', as: 'post'
end

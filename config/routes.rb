Rails.application.routes.draw do
  resources :comment_votes
  resources :votes
  resources :comments
  resources :posts
  resources :favorites
  resources :users
  post '/login', to: 'auth#create'
  get '/profile', to: 'users#profile'
end

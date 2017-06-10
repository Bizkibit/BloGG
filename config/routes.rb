Rails.application.routes.draw do

  get '/', to: 'welcome#index', as: :home

  resources :posts
  # get '/posts/new', to: 'posts#new'
  # post'/posts', to: 'posts#create', as: :posts
  # get '/posts/:id', to: 'posts#show', as: :post
  # get 'posts', to: 'posts#index'

end

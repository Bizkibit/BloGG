Rails.application.routes.draw do

  get '/', to: 'welcome#index', as: :home

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  # get('/posts/new', { to: 'posts#new', as: :new_post })
  # post('/posts', { to: 'posts#create', as: :posts })
  # get('/posts/:id', { to: 'posts#show', as: :post })
  # get('/posts', { to: 'posts#index' })
  # get('/posts/:id/edit', { to: 'posts#edit', as: :edit_post })
  # patch('/posts/:id', { to: 'posts#update' })
  # delete('/posts/:id', { to: 'posts#destroy' })
  resources :users

end

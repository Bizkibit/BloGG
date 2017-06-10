Rails.application.routes.draw do

  get '/', to: 'welcome#index', as: :home

  resources :posts
  # get('/posts/new', { to: 'posts#new', as: :new_post })
  # post('/posts', { to: 'posts#create', as: :posts })
  # get('/posts/:id', { to: 'posts#show', as: :post })
  # get('/posts', { to: 'posts#index' })
  # get('/posts/:id/edit', { to: 'posts#edit', as: :edit_post })
  # patch('/posts/:id', { to: 'posts#update' })
  # delete('/posts/:id', { to: 'posts#destroy' })

end

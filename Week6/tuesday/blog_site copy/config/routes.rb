Rails.application.routes.draw do

  get 'posts', to: 'posts#index', as: 'posts'

  get 'posts/new', to: 'posts#new', as: 'new'

  get 'posts/:id', to: 'posts#show', as: 'post'

  get 'posts/:id/edit', to: 'posts#edit', as: 'edit'

  # resources :posts

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'


end

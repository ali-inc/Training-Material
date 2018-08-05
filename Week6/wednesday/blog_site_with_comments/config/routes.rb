Rails.application.routes.draw do

  get 'about', to: 'misc#about', as: 'about'
  get 'contact', to: 'misc#contact', as: 'contact'
  get 'faq', to: 'misc#FAQ', as: 'faq'
  get 'terms', to: 'misc#terms', as: 'terms'
  get '', to: 'misc#index', as: 'index'

  # get 'posts', to: 'posts#index', as: 'home'
  #
  # get 'posts/new', to: 'posts#new', as: 'new'
  #
  # get 'posts/:id', to: 'posts#show', as: 'post'
  #
  # get 'posts/:id/edit', to: 'posts#edit', as: 'edit'

  resources :posts do
    resources :comments
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'posts#index'


end

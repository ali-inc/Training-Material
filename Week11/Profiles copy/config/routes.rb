Rails.application.routes.draw do

  root "profiles#index"
  get '/profiles/adminindex', to: 'profiles#adminindex'

  resources :customs
  resources :certifications
  resources :employments
  resources :educations
  resources :projects
  resources :sections do
    collection do
      patch :sort
    end
  end
  resources :profiles
  get '/login', to: 'session#login'
  get '/logout', to: 'session#logout'
  post '/login', to: 'session#create'
  get '/token/:token', to: 'tokenurl#show'

  get '/token' => 'profiles#token', :as => 'token'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

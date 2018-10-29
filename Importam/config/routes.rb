Rails.application.routes.draw do
  root 'static_pages#home'
  get 'google/import'
  get 'google/help'
  get 'static_pages/help'
  get 'static_pages/google'
  get 'google/authenticate'
  get 'hikes/index'
  get 'google/oauth2callback'
  get 'person/new'
  post 'google/oauth2callback'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/index'

end

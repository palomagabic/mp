Rails.application.routes.draw do
  resources :games
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'geocoder/findaddress'
  root 'pages#index'

  get 'pages/client'
  get 'pages/contact'
  get 'pages/invitade'
  get 'pages/new'
  get 'pages/type'
  get 'pages/filter'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

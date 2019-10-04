Rails.application.routes.draw do
  get 'geocoder/findaddress'
  root 'pages#index'

  get 'pages/client'
  get 'pages/contact'
  get 'pages/invitade'
  get 'pages/new'
  get 'pages/type'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

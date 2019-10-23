Rails.application.routes.draw do
  get 'send/index'
  resources :games

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'geocoder/findaddress'
  root 'pages#index'

  get 'pages/contact'
  get 'pages/new'
  get 'pages/type'
  get 'pages/filter'
  get 'pages/we'

  get 'send' => 'send#index'
  post 'send' => 'send#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

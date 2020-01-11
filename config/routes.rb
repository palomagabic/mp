Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'items/one'
  get 'items/two'
  get 'items/three'
  get 'items/four'
  get 'items/five'
  get 'items/six'
  get 'items/seven'
  get 'send/index'
  resources :games

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'geocoder/findaddress'
  root 'pages#index'

  get 'pages/contact'
  get 'pages/new'
  get 'pages/type'
  get 'pages/filter'
  get 'pages/we'
  get 'pages/team'

  get 'send' => 'send#index'
  post 'send' => 'send#create'

  get "/login", to: redirect("/auth/google_oauth2")

  namespace :paypal do
    resources :checkouts, only: [:create] do
      collection do
        get :complete
      end
    end
  end

resource :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

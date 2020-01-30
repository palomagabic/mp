Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :games

  devise_for :users, controllers: {
    registrations: 'users/registrations',
     omniauth_callbacks: 'users/omniauth_callbacks'
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
  get "/logout", to: "sessions#destroy"
  #get "auth/google_oauth2/callback", to "sessions#create"
  get 'auth/failure', to: redirect('/')
  resource :sessions, only: [:create, :destroy]

  namespace :paypal do
    resources :checkouts, only: [:create] do
      collection do
        get :complete
      end
    end
  end

match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup

resource :sessions, only: [:create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

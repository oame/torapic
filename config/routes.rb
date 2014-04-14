Torapic::Application.routes.draw do
  # API
  mount API => '/'

  # Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # User
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
    :omniauth_callbacks => "users/omniauth_callbacks"
  }

  get "/auth/:provider/callback" => "auth#create"
  delete "/auth/destroy/:provider" => 'auth#destroy', as: :destroy_connection

  resources :users

  get "users/show"

  # Photo
  resources :photos

  # Root
  authenticated :user do
    root "photos#new", as: :authenticated_root
  end

  unauthenticated do
    root "static_pages#index", as: :unauthenticated_root
  end
end

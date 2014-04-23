Torapic::Application.routes.draw do
  # API
  mount API => '/'

  # User
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
    :omniauth_callbacks => "users/authentications"
  }

  # delete "/auth/:provider" => 'users/authentications#destroy', as: :destroy_authentication

  get "/users/:name" => "users#show", as: :user

  # Photo
  resources :photos

  # Root
  authenticated :user do
    root "photos#new", as: :authenticated_root
  end

  unauthenticated do
    root "static_pages#index", as: :unauthenticated_root
  end

  # Error
  unless Rails.application.config.consider_all_requests_local
    match '*not_found', to: 'errors#error_404'
  end
end

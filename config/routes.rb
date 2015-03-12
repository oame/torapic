Rails.application.routes.draw do
  # API
  # mount API::Base=> '/'

  # User
  devise_for :users, :controllers => {
    :sessions      => "users/sessions",
    :registrations => "users/registrations",
    :passwords     => "users/passwords",
    :omniauth_callbacks => "users/authentications"
  }

  namespace :users, as: :user do
    namespace :authentications, as: :authentication, path: :auth do
      delete "/:provider" => :destroy
    end

    get "/:name" => :show
  end

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
    match '*not_found', to: 'errors#error_404', via: [:get, :post]
  end
end

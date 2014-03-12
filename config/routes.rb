Torapic::Application.routes.draw do
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

  # Photo
  resources :photos do
    member do
      get :download
    end
  end

  authenticated :user do
    root "photos#new", as: :authenticated_root
  end

  unauthenticated do
    root "static_pages#index", as: :unauthenticated_root
  end
end

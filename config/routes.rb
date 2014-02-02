Torapic::Application.routes.draw do
  # Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # User
  devise_for :users

  # Item
  resources :items, except: [:index] do
    member do
      get :download
    end
  end

  # Static pages
  root 'static_pages#index'
end

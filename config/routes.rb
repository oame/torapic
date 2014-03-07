Torapic::Application.routes.draw do
  resources :photos

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

  root 'static_pages#index'
end

Torapic::Application.routes.draw do
  # Admin
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'static_pages#index'

  resources :items, except: [:index] do
    member do
      get :download
    end
  end
end

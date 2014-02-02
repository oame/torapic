Torapic::Application.routes.draw do
  root 'static_pages#index'

  resources :items, except: [:index] do
    member do
      get :download
    end
  end
end

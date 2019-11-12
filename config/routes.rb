Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'frontend/main#index'

  namespace :backend do
    get '/', to: 'main#index'
    resources :products
  end
  authenticated do
    root :to => 'logued#index'
  end 
    unauthenticated do
    root :to => 'main#index'
  end

  scope module: :frontend do
    get 'product', to: 'main#product'
  end
  

  #devise_for :users
end

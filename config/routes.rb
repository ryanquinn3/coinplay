Coinplay::Application.routes.draw do

  resources :sessions
  resources :users

  # Default route
  root :to => 'home#index', :as => :home

  match 'user/edit' => 'users#edit', :as => :edit_current_user
  match 'signup' => 'users#new', :as => :signup
  match 'logout' => 'sessions#destroy', :as => :logout
  match 'login' => 'sessions#new', :as => :login
end

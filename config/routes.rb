Rails.application.routes.draw do
  devise_for :users
  root to: "main_menus#index"
  resources :main_menus
  resources :users, only: :show
end

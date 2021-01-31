Rails.application.routes.draw do
  devise_for :users
  root to: "main_menus#index"
  resources :main_menus do
    resource :likes, only: [:create, :destroy]
  end

  resources :users, only: [:show]

  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end

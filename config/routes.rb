Rails.application.routes.draw do
  get 'users/show'
  devise_for :users

  resources :users, only: :show do
    resources :posts, expect: :index
  end
  resources :posts, only: :index


  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update] do
    resources :profiles, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :categories, only: [:index, :show]
  resources :comics do
    resources :posts, only: :create
    collection do
      get 'search'
    end
  end
  root to: "comics#index"
end

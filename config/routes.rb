Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show, :edit, :update]
  resources :comics do
    resources :posts, only: :create
    collection do
      get 'search'
    end
  end
  root to: "comics#index"
end

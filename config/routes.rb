Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'plofiles', to: 'users/registrations#new_profile'
    post 'plofiles', to: 'users/registrations#create_profile'
  end
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

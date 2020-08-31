Rails.application.routes.draw do
  devise_for :users
  resources :comics
  root to: "comics#index"
end

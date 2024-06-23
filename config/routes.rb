Rails.application.routes.draw do
  get 'home/index'
  # Devise routes for User authentication

  # Companies routes
  resources :companies

  # Flats routes with nested matches
  resources :flats do
    resources :matches, only: [:index, :new, :create]
  end

  # Renters routes with nested matches
  resources :renters do
    resources :matches, only: [:index, :new, :create]
  end

  # Standalone matches routes for actions like show, edit, update, destroy
  resources :matches, only: [:show, :edit, :update, :destroy]

  # Setting the root route to a home controller
  root 'home#index'
end

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :comments, only: [:index, :create, :update, :destroy]
      resources :users, only: [:index, :create, :update, :destroy]
      resources :recipes, only: [:index, :create, :update, :destroy]
    end
  end
end
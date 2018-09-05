Rails.application.routes.draw do
  root to: 'recipes#index'
  resources :recipes, only: [:index, :show, :new, :create, :edit, :update] do
    patch 'feature', to: 'recipes#mark_featured', on: :member
    get 'search', on: :collection
  end
  resources :recipe_types, only: [:new, :create, :show]
  resources :cuisines, only: [:show, :new, :create]
end

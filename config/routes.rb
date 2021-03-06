Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: "articles#index"
  resources :kitchens do
    resources :ki_comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :baths do
    resources :ba_comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :toilets do
    resources :to_comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
end

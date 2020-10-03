Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  resources :kitchens do
    resources :ki_comments, only: :create
  end
  resources :baths do
    resources :ba_comments, only: :create
  end
  resources :toilets do
    resources :to_comments, only: :create
  end
end

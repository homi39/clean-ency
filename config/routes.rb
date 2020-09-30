Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  resources :kitchens
  resources :bathes
  resources :toilets
end

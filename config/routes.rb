Rails.application.routes.draw do
  devise_for :users
  root to: "articles#index"
  get 'kitchens/index'
  get 'bathes/index'
  get 'toilets/index'
  resources :articles
end

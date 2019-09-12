Rails.application.routes.draw do
  resources :matches
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :articles
  resources :topics, only: [:show]
  root to: 'pages#news'
end

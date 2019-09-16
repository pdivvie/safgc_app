Rails.application.routes.draw do
  resources :players
  resources :games
  resources :matches
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :users_admin, only: [:index, :show], :controller => 'users'
  resources :articles
  resources :topics, only: [:show]
  root to: 'pages#news'
end

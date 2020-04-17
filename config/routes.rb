Rails.application.routes.draw do
  devise_for :users
  root to: 'cards#index'
  resources :cards, except: :index
  resources :users, only: :show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

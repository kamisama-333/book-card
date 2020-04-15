Rails.application.routes.draw do
  root to: 'cards#index'
  resources :cards, except: :index
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

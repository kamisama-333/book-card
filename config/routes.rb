Rails.application.routes.draw do
  root to: 'cards#index'
  resources :cards, only: [:new, :create]
  get 'cards/show'
  get 'cards/add'
  get 'cards/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

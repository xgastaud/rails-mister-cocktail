Rails.application.routes.draw do
  # get 'doses/new'

  root to: 'cocktails#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
  # resources :cocktails do
    resources :doses, only: [:new, :create, :destroy]
  end
end

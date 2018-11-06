Rails.application.routes.draw do

  resources :cocktails, only: [:index, :new, :create, :show, :destroy] do
    resources :doses, only: [:index, :new, :create, :show]
  end

  resources :doses, only: [:destroy]

  root 'cocktails#index'

end

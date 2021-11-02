Rails.application.routes.draw do
  devise_for :users
  root to:'items#index'
  get 'items/new', to: 'items#new'
  post 'items', to: 'items#create'
  
  resources :items, only: [:index, :show, :new, :create, :destroy, :edit, :update] do

  end
 
  


  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

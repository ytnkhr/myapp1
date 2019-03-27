Rails.application.routes.draw do

  devise_for :users
  root 'home#top'
  resources :posts , :only => [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :users, :only => [:show, :index, :edit, :update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

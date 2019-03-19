Rails.application.routes.draw do
  root 'home#top'
  resources :posts , :only => [:show, :index, :new, :create, :edit, :update, :destroy]
 
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

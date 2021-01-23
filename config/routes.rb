Rails.application.routes.draw do
  devise_for :users
  #get 'home/index'
  root "home#index"  
  get  "home/about"
  get  "themes/progress"
  resources :themes, only: [:index, :create, :new, :show] do
      resources :subjects, only: [:index, :create, :update]
  end 
end

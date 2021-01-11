Rails.application.routes.draw do
  #get 'home/index'
  root "home#index"  
  get  "home/about"
  resources :themes, only: [:index, :create] do
      resources :start_times, only: :create
      resources :stop_times, only: :create
  end 
end

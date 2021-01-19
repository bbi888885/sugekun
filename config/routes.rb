Rails.application.routes.draw do
  #get 'home/index'
  root "home#index"  
  get  "home/about"
  get  "themes/progress"
  resources :themes, only: [:index, :create, :new, :show] do
      resources :start_times, only: :create
      resources :stop_times, only: :create
      resources :subjects, only: :create
  end 
end

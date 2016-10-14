Rails.application.routes.draw do
  # get 'quotes/index' 
  resources :quotes, only: [:new, :create]
  get 'quotes/new' 
  root 'quotes#new'  
end

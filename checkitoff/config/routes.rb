Rails.application.routes.draw do
  
  resources :check_lists do
    resources :items do
    	member do
    		patch :complete
      end 
    end 
  end 
  
  devise_for :users
  
  get 'home/index'
   root "check_lists#index"
end

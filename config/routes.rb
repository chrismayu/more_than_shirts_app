Rails.application.routes.draw do
  root to: 'visitors#index'
  devise_for :users
  resources :users 
  
  match 'contact' => 'contact#new',  :via => :get
  match 'contact' => 'contact#create', :via => :post
  
  
end

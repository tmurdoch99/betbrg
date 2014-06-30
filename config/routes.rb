Zipwire::Application.routes.draw do
  
   devise_for :users
  resources :user_details do
  resources :users
   
   end
resources :users
  match '/profile/:id', :to => 'user_details#profile', as: 'profile' 
  
  match '/profile/:id', :to => 'user_details#profile', as: 'view_profile'   
   
  match '/user_details/:id', :to => 'user_details#index', as: 'index'
  resources :predictions
 
   resources :candidate_searches
   
  resources :fighters

 
  resources :bets
  
   
  authenticated :user do
    root :controller => 'user_details', :action => 'index'
	
  end
  root :to => 'home#home'
  
 
 
end
Zipwire::Application.routes.draw do
  
   devise_for :users
  resources :user_details do
   resources :users
   
   end

  match '/profile/:id', :to => 'user_details#profile', as: 'profile' 
  
  match '/profile/:id', :to => 'user_details#profile', as: 'view_profile'   
   

  resources :predictions
 
   resources :candidate_searches
   
  resources :fighters

 
  resources :bets
  
   
  authenticated :user do
    root :to => 'user_details#index/:id'
	
  end
  root :to => 'home#home'
  
 
 
end
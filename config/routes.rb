Betbrg::Application.routes.draw do
  
   devise_for :users
  resources :user_details do
   resources :users
   
   end

  match '/profile/:id', :to => 'user_details#profile', as: 'profile' 
  
    
   

  resources :predictions
 
   resources :candidate_searches
   
  resources :fighters

 
  resources :bets
  
   
  authenticated :user do
    root :to => 'home#index'
	
  end
  root :to => "home#index"
  
 
 
end
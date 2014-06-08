Zipwire::Application.routes.draw do
  
   devise_for :users
  resources :user_details do
   resources :users
   
   end

  match '/profile/:id', :to => 'user_details#profile', as: 'profile' 
  
  match '/profile/:id', :to => 'user_details#profile', as: 'view_profile'   
   

  
 
   resources :candidate_searches
   
 
   
  authenticated :user do
    root :to => 'user_details#index'
	
  end
  root :to => 'home#home'
  
 
 
end
Betbrg::Application.routes.draw do
  
  
  resources :user_details


  devise_for :businesses

  resources :predictions
 
   resources :candidate_searches
   
  resources :fighters

 
  resources :bets
  
   
  authenticated :user do
    root :to => 'home#index'
	
  end
  root :to => "home#index"
  
  devise_for :users
  resources :users
end
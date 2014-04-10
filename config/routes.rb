Betbrg::Application.routes.draw do
  
  
  resources :predictions


  resources :fighters


  resources :bets


  authenticated :user do
    root :to => 'home#index'
	
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end
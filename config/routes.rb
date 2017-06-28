Rails.application.routes.draw do
#  get 'session/new'
	get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  get		 '/signup',	 to: 'users#new'
  post   '/signup',  to: 'users#create'
  
  resources :session#, :only => [:new, :create, :destroy]
  #resources :registrations
  root 'welcome#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
#  get 'session/new'
	get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  get		 '/signup',	 to: 'registrations#new'
 


  resources :session#, :only => [:new, :create, :destroy]
  #resources :registrations
  root 'welcome#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

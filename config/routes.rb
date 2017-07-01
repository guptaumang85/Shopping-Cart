Rails.application.routes.draw do
	get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'
  get		 '/signup',	 to: 'users#new'
  post   '/signup',  to: 'users#create'
  get		 '/user/edit', to: 'users#edit'
  post    '/user/edit', to: 'users#update'
  resources :products
  root 'welcome#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

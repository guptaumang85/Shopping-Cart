Rails.application.routes.draw do
  require 'sidekiq/web'
	get    '/login',   to: 'session#new'
  post   '/login',   to: 'session#create'
  delete '/logout',  to: 'session#destroy'

  get		 '/signup',	 to: 'users#new'
  post   '/signup',  to: 'users#create'

  get		 '/user/edit', to: 'users#edit'
  post    '/user/edit', to: 'users#update'
  get     '/user/show', to: 'users#show'


  mount Sidekiq::Web => '/sidekiq'

  resources :carts, except: [:new, :create] do
    member do
      post :add_product
    end
  end

  resources :products

  resources :orders

  root 'welcome#new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

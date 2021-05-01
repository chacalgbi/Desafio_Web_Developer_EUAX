Rails.application.routes.draw do

	resources :activities
	resources :projects
	resources :admins
	
	devise_for :profiles
  	
	get 'welcome/index'
	get 'inicio', to: 'welcome#index'
	root to: 'welcome#index'

end

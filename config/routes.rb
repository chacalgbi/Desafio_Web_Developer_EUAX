Rails.application.routes.draw do
  resources :activities
  resources :projects
  devise_for :profiles
  get 'welcome/index'
  get 'inicio', to: 'welcome#index'

  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :articles do
    resources :comments
  
  end
  
  resources :accounts
  resources :subscribes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

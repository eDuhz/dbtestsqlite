Rails.application.routes.draw do
  get 'pages/home'
  get 'pages/about'
  resources :articles do
    resources :comments
  end
  resources :users
  root 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'users/edit'
  get 'users/show'
  get 'users/new'
  #match ':controller (/:action(/:id))', :via => :get
end

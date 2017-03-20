Rails.application.routes.draw do
  root 'money#index'

  resources :types
  resources :trans
  resources :cards 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

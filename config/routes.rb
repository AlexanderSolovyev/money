Rails.application.routes.draw do
  resources :plans do
    get 'report', on: :collection
    post 'report_date', on: :collection
  end
  root 'money#index'

  resources :types
  resources :trans
  resources :cards 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

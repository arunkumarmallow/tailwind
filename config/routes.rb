Rails.application.routes.draw do
  resources :home do
    get :about, on: :collection
  end
  root "home#index"

  get '/login', to: 'home#login'
  get '/login1', to: 'home#login1'
  get '/invoice', to: 'home#invoice'
  get '/dashboard', to: 'home#dashboard'
end

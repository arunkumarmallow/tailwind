Rails.application.routes.draw do
  resources :home do
    get :about, on: :collection
  end
  root "home#index"

  get '/login', to: 'home#login'
  get '/login1', to: 'home#login1'
  get '/invoice', to: 'main#invoice'
  get '/dashboard', to: 'main#dashboard'
  get '/dashboard1', to: 'home#dashboard1'
end

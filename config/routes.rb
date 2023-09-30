Rails.application.routes.draw do
  resources :home do
    get :about, on: :collection
  end
  root "home#index"

  get 'class', to: 'tw_class#index'
  get 'advance_change', to: 'tw_class#index'
  post 'tw-class/new', to: 'tw_class#create'
  post 'advance_change', to: 'tw_class#advance_change'

  get '/login', to: 'home#login'
  get '/login1', to: 'home#login1'
  get '/dashboard1', to: 'home#dashboard1'
  get '/onboard1', to: 'home#onboard1'
  get '/onboard2', to: 'home#onboard2'
  get '/onboard3', to: 'home#onboard3'
  get '/billing', to: 'home#billing'

  get '/invoice', to: 'main#invoice'
  get '/dashboard', to: 'main#dashboard'
end

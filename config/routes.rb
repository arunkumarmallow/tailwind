Rails.application.routes.draw do
  resources :home do
    get :about, on: :collection
  end
  root "home#index"
end

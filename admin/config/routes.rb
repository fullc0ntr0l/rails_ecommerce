Admin::Engine.routes.draw do
  root to: 'admin#index'

  resources :sliders
  resources :products
  resources :inspires
  resources :shippings
end

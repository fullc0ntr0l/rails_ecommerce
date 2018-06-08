Admin::Engine.routes.draw do
  root to: 'admin#index'

  resources :sliders
  resources :products
  resources :inspirations
  resources :shippings
end

Brightonbelles::Application.routes.draw do
  root :to => 'pages#home'
  match '/products' => 'pages#products'
  match '/product' => 'pages#product'

  resources :collections
  resources :product_ranges
  resources :products
end

Brightonbelles::Application.routes.draw do
  root :to => 'pages#home'

  resources :collections
  resources :product_ranges
  resources :products
end

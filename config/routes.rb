Brightonbelles::Application.routes.draw do
  root :to => 'pages#show', :id => 'home'

  resources :collections
  resources :product_ranges
  resources :products
  resources :pages
end

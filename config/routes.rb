Brightonbelles::Application.routes.draw do
  root :to => 'pages#show', :id => 'home'

  match '/search' => 'search#keyword'

  resources :collections
  resources :product_ranges
  resources :products
  resources :pages
end

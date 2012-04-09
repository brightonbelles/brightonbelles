Brightonbelles::Application.routes.draw do
  root :to => 'pages#home'
  match '/products' => 'pages#products'
  match '/product' => 'pages#product'
end

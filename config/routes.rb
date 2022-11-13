Rails.application.routes.draw do
  
  root "links#index"
  get "/words", to: "words#index"
  get "/products", to: "products#index"
  
  resources :products
  resources :pages
  resources :words
end
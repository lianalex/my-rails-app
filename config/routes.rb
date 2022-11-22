Rails.application.routes.draw do
  
  root "links#index"
  get "/words", to: "words#index"
  get "/products", to: "products#index"
  get "/scrapes", to: "scrapes#index"
  get "/responses", to: "responses#index"
  get "products/:id/export", to: "products#export"
  
  resources :products
  
  resources :pages
  
  resources :words do
    resources :sections
  end
  
  resources :scrapes do
    resources :books
  end
  
  resources :responses
  
end
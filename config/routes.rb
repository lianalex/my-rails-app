Rails.application.routes.draw do
  
  root "links#index"
  
  resources :pages
end
Rails.application.routes.draw do

  root "articles#index"

  get "/applycss", to: "articles#applycss"
  get "/applyhtml", to: "articles#applyhtml"
  get "/generator", to: "articles#generator"
  get "/scraper", to: "articles#scraper"
end
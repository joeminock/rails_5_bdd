Rails.application.routes.draw do
  root to: "articles#index"
  
  #Enable all paths for articles
  resources :articles
end

Rails.application.routes.draw do
  root to: 'trains#index'
  resources :trains 
end

Rails.application.routes.draw do
  root to: 'trains#index'
  resources :trains do 
    collection { post :import }
  end
end

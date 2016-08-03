Rails.application.routes.draw do

  resources :confessions

  root 'pages#index'
end

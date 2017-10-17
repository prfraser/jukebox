Rails.application.routes.draw do
  resources :subscribers

  root 'pages#home'
  get 'pages/home'

  get 'pages/monkey'
  post 'pages/monkey'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

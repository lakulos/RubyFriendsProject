Rails.application.routes.draw do
  resources :friendsdbs
  get 'home/contact'
  get 'home/about'
  get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

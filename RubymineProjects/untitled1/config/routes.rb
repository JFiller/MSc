Rails.application.routes.draw do
  resources :user2s
  get 'item/new'

  get 'item/create'

  get 'pages/home'

  root 'pages#home'

  namespace :application do
    get 'page_controller/home'
  end

  get 'say_hello/say'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

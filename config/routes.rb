Rails.application.routes.draw do
  devise_for :users
  get 'pages/index'
  get 'pages/html'
  get 'pages/css'
  get 'pages/javascript'
  root to: 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts do
  	resources :postcomments
  end

  resources :posts1 do
  	resources :postcoment1s
  end

  resources :posts2 do
  	resources :postcoment2s
  end
end

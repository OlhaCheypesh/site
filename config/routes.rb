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
  get "postcomments/:postcomment_id/vote", to: "postcomments#vote",as: "vote"

end


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

  resources :posts1 do
  	resources :postcoment1s
  end
  get "postcoment1s/:postcomment1_id/vote", to: "postcoment1s#vote",as: "vote1"

  resources :posts2 do
  	resources :postcoment2s
  end
  get "postcoment2s/:postcomment2_id/vote", to: "postcoment2s#vote",as: "vote2"

end


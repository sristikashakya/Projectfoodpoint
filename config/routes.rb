Rails.application.routes.draw do
  devise_for :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :posts do
  	resources :comments
  	resources :upvotes, only: :create
  	resources :downvotes, only: :create
  end
  resources :restaurants, only: :show
  resources :search, only: [:index] 
  resources :chat, only: :index
  resources :conversations, only: [:create] do
    resources :messages, only: [:create]
    member do
      post :close
    end
  end
  get 'map' => 'static_pages#map'
  get 'mail' => 'static_pages#mail'
end
 
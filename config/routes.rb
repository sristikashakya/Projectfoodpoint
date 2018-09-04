Rails.application.routes.draw do
  devise_for :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  resources :posts do
  	resources :comments
  	resources :upvotes, only: :create
  	resources :downvotes, only: :create
  end
  resources :restaurants, only: :show
  resources :search, only: [:index] 
  get 'map' => 'static_pages#map'
  get 'mail' => 'static_pages#mail'
end
 
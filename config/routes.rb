Rails.application.routes.draw do
  resources :companies
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  root  'posts#index'
  resources :posts do
    get 'detail' => 'posts#detail' , on: :collection
  end

  get 'search' => 'posts#search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

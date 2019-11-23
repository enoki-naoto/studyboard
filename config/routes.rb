Rails.application.routes.draw do
  get 'categorys/new'
  get 'categorys/index'
  post 'categorys/create'
  get 'pages/index'
  get 'sessions/new'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :plans do
    resources :todos
  end
  namespace :administrator do
    resources :users, only: [:index]
  end
  resources :categorys do
    resources :questions
  end
  
  resources :questions do
    resources :answers, only: [:new,:create]
  end

  resources :tweets,only: [:index,:new,:create]
  resources :tweets do
    get :search, on: :collection
  end
  
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  
end

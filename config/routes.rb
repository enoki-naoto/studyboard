Rails.application.routes.draw do
  get 'categorys/new'
  get 'categorys/index'
  post 'categorys/create'
  get 'pages/index'
  get 'sessions/new'
  get 'questions/search'
  get 'answers/search'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:new,:create,:show]
  resources :plans, only: [:new,:create,:show,:update] do
    resources :todos, only: [:new,:create,:edit,:update,:destroy]
  end
  namespace :administrator do
    resources :users, only: [:index]
  end
  resources :categorys do
    resources :questions
  end
  
  resources :questions do
    resources :answers, only: [:new,:create,:destroy]
  end

  resources :tweets,only: [:index,:new,:create]
  resources :tweets do
    get :search, on: :collection
  end
  
  resources :study_times do
    member do
      get :newfinish
    end
      resources :breaks
        #member do
          #get:newre
        #end
        #resources :restarts
      #end
  end
  
  #resources :study_times do
    #resources :restarts
  #end
  
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  
end

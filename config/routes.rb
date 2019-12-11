Rails.application.routes.draw do
  
  root 'pages#index'
  get 'sessions/new'

  resources :users, only: [:new,:create,:show]
  resources :plans, only: [:new,:create,:show,:update] do
    resources :todos, only: [:new,:create,:edit,:update,:destroy]
  end
  namespace :administrator do
    resources :users, only: [:index]
  end
  
  resources :categorys, only: [:new,:create,:index] do
    resources :questions do
      collection do
        get :search
      end
      resources :answers, only: [:new,:create,:destroy] do
        collection do
          get :search
        end
      end
    end
  end

  resources :tweets,only: [:index,:new,:create,:destroy] do
    collection do
      get :search
    end
  end
  
  resources :study_times,only: [:new,:create,:show] do
    member do
      get :newfinish
    end
  end
  
  get '/login', to:'sessions#new'
  post '/login', to:'sessions#create'
  delete 'logout', to:'sessions#destroy'
  
end

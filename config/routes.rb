Rails.application.routes.draw do
  devise_for :users

  root "clubhouses#index"
  get 'users/:user_id/clubhouses/:id/join', to: 'clubhouses#join', as: 'user_clubhouse_join'
  get 'users/:user_id/clubhouses/:id/leave', to: 'clubhouses#leave', as: 'user_clubhouse_leave'
  
  resources :users do
   resources :clubhouses 
  end

  resources :clubhouses do  
    resources :posts
  end
  resources :posts do
    resources :comments
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

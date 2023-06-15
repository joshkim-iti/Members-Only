Rails.application.routes.draw do
  devise_for :users

  root "clubhouses#index"
  get 'user/:user_id/clubhouses/:id/join', to: 'clubhouses#join', as: 'user_clubhouse_join'

  resources :user do
   resources :clubhouses do 
      resources :posts do
        resources :comments
      end
    end
  end
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

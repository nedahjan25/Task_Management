Rails.application.routes.draw do
  resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :tasks

  # Add a new route for the 'my_tasks' page
  get '/my_tasks', to: 'tasks#my_tasks', as: 'my_tasks'
  get '/all_tasks', to: 'tasks#all_tasks', as: 'all_tasks'

  
  root 'tasks#index'
end

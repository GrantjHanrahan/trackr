Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'

  get '/pages/new' => 'pages#new'
  post 'pages' => 'pages#create'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users

  resources :workouts do
    resources :activities
  end

  resources :plans

  # post '/workouts/new/:activity_type' => 'workouts#create', as: :new_workout_with_activity
  # post '/workouts/:workout_id/:activity_type' => 'workouts#update', as: :add_activity_to_workout
  # resources :activities

  get '/profile' => 'pages#profile'
  # get '/admin'   => 'pages#admin_party'
end

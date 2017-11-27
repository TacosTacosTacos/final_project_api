# frozen_string_literal: true

Rails.application.routes.draw do
  resources :service_types
  resources :mileages
  resources :cars
  resources :examples, except: %i[new edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/nhtsa' => 'nhtsa#retrieveData'
  resources :users, :makes, only: %i[index show]
end

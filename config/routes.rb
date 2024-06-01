# frozen_string_literal: true

Rails.application.routes.draw do
  get 'search/index'
  root 'home#index'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create'
  get 'signin', to: 'user#login'
  get 'search', to: 'search#index'
  resources :users, only: [:create]
  resources :animes, only: [:index]
end

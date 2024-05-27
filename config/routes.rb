# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  get 'signup', to: 'users#new'
  post 'signup', to: 'users#create' # 追加
  resources :users, only: [:create]
  resources :animes, only: [:index]
end

# frozen_string_literal: true

Rails.application.routes.draw do
  resources :categories
  resources :votes, only: [:create, :destroy]
  resources :articles do
    resources :votes
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
end

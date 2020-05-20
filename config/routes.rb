Rails.application.routes.draw do
  resources :categories
  resources :articles do
    resources :votes
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "articles#index"
end

Rails.application.routes.draw do
  devise_for :users
  
  root to: 'questions#index'
  resources :questions do
    get 'category_children', to: 'questions#category_children'
    get 'category_grandchildren', to: 'questions#category_grandchildren'
  end
  resources :categories 
end
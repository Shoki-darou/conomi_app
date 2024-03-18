Rails.application.routes.draw do
  get 'questions/index'
  get 'questions/new'
  get 'questions/show'
  get 'questions/edit'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

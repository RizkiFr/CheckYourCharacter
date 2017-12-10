Rails.application.routes.draw do
  get "user" => "user#index"
  put "user/:id" => "user#update"
  patch "user/:id" => "user#update"
  put "user/:id" => "user#delete"
  patch "user/:id" => "user#delete"

  get "question" => "question#index"
  put "question/:id" => "question#update"
  patch "question/:id" => "question#update"
  put "question/:id" => "question#delete"
  patch "question/:id" => "question#delete"
  put "question/:id" => "question#create"
  patch "question/:id" => "question#create"


	devise_for :users, :controllers => { registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'welcome/index'

  resources :students 

  resources :answers 

  resources :users
  
  resources :questions

  root 'welcome#index'
end

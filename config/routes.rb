Ting::Application.routes.draw do
  devise_for :users
  resources :costs

  resources :students
  root 'students#index'
end

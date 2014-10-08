Ting::Application.routes.draw do
  resources :teacher_signs do
  	collection do
  		get :export
  	end
  end

  resources :test_courses  do
  	collection do
  		get :export
  	end
  end

  devise_for :users
  resources :costs

  resources :students do
  	collection do
  		get :export
  	end
  end
  root 'students#index'
end

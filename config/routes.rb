Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  resources :articles do
    resources :comments
  end
  resources :categories

  devise_for :users
  root to: 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

Rails.application.routes.draw do


  mount LetterOpenerWeb::Engine, at: '/letter_opener' if Rails.env.development? || ENV["MAILING_DELIVERY_METHOD"] == "letter_opener_web"


  
  resources :newsletters, only: [:create, :destroy]
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

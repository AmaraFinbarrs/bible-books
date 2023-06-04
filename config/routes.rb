Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'books#index'
  resources :books
  resources :verses
  resources :chapters
  resources :divisions

  get 'search_related_words', to: 'verses#search_related_words'
end

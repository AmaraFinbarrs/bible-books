Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: {
    confirmations: 'users/confirmations',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
    unlocks: 'users/unlocks'
  }

  # OmniAuth routes
  devise_scope :user do
    get '/users/auth/:provider/callback', to: 'users/omniauth_callbacks#callback'
    post '/users/auth/:provider/callback', to: 'users/omniauth_callbacks#callback'
    # Additional providers and routes can be added here
  end

  # Defines the root path route ("/")
  root 'books#index'

  resources :books
  resources :verses
  resources :chapters, only: %w[create destroy]
  resources :divisions

  get 'search_related_words', to: 'verses#search_related_words'
end

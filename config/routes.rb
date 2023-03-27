Rails.application.routes.draw do
  root "posts#index"
  post 'posts' => 'posts#create'
  post "guest_login", to: "guest_sessions#create"
  get "guest_login", to: "guest_sessions#create"
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
get "signup", to: "users#new"
# Session用のルートティングを設定
get "login", to: "sessions#new"
post "login", to: "sessions#create"
get "logout", to: "sessions#destroy"
resources :users do
  member do
    get :following, :followers
  end
end
resources :posts, only: [:create, :new]
resources :users, only:[:index, :show] 
resources :users, except: [:new]
resources :password_resets, only: [:new, :create, :edit, :update]
resources :posts do
  resources :comments, only:[:create, :destroy]
  resource :favorites, only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end
end

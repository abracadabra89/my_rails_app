Rails.application.routes.draw do
  
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get "edit_profile" => "users#edit"
  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'about'   => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get '/logout'  => 'sessions#destroy'
  
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]

end
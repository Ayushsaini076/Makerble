Rails.application.routes.draw do
  get 'welcome/index'
  devise_for :users, controllers: {
    sessions: 'users/sessions' # Point to your custom sessions controller
    # Add other controllers as needed (e.g., registrations, passwords)
  }

  scope '/hospital' do
    resources :patients
  end
  resources :patients
  resources :roles
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  authenticated :user do
    root to: 'patients#index',as: :authenticated_root
  end

  root to: 'welcome#index'

end

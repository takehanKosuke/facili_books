Rails.application.routes.draw do
  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  root "welcome#index"
  resources :lessons, only: [:create, :new, :show]
  resources :top, only: [:create, :index, :new] do
    collection do
      get :search, :information
    end
  end
  resources :lessons_users, only: [:destroy] do
    collection do
      delete :all_destroy
    end
  end
  resources :users, only: [:edit, :update]
end

Rails.application.routes.draw do
  devise_for :employees, controllers: {
    # :sessions => "employee/sessions",
    :registrations => "employees/registrations"
  }

  devise_for :admins

  root 'home#index'
  get 'home/about'

  resources :home, only: [:show, :edit, :update, :destroy]
  resources :qualifications, only: [:edit, :update]
  resources :leaves, only: [:edit, :update]
  resources :salaries, only: [:edit, :update]

end

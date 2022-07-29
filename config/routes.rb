Rails.application.routes.draw do
  devise_for :employees, controllers: {
    # :sessions => "employee/sessions",
    :registrations => "employees/registrations"
  }

  devise_for :admins, :path => '', :path_names => {:sign_up => "s9442161" }
<<<<<<< HEAD
=======

  # do
  #   get '/s9442161' => 'devise/registrations#new', :as => :new_admin_registration
  # end
>>>>>>> 025fd88c3b78e8f1e7f1bbe0f86bcfd2c46bc328

  root 'home#index'
  get 'home/about'

  resources :home, only: [:show, :edit, :update, :destroy]
  resources :qualifications, only: [:edit, :update]
  resources :leaves, only: [:edit, :update]
  resources :salaries, only: [:edit, :update]

  get 'apply/apply_leave'
  # put 'apply/:id', to: 'apply#update'
  put 'apply/update'

  get 'approve/dashboard'
  put 'approve/update'
  get 'status/leave_status'
  put 'status/update'
end

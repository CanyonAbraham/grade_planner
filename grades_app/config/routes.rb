Rails.application.routes.draw do
  devise_for :users

  root "student_class#index"
  resources :student_class
end

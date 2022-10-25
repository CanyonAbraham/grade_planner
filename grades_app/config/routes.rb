Rails.application.routes.draw do
  
devise_for :users 
devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    resources :schedules
end



root "schedules#index"
end

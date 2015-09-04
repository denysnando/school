Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :students
  resources :courses

  root :to => 'welcomes#index'

end

Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :students do
    get :desativation_student
  end
  resources :courses

  root :to => 'welcomes#index'

end

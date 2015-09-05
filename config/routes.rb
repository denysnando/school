Rails.application.routes.draw do

  devise_for :users, :controllers => { registrations: 'registrations' }

  resources :students do
    get :desativation_student
    get :ativation_student
  end
  resources :courses do
    get :desativation_courses
    get :ativation_courses
  end

  root :to => 'welcomes#index'
end

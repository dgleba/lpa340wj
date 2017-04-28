Rails.application.routes.draw do

  resources :process_steps
  resources :part_numbers
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  resources :surveys do
    resources :questions do
    end
  end

  resources :answers, only: [:create]

  root "surveys#index"


end

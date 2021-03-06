Rails.application.routes.draw do
  devise_for :users
  root 'prototypes#index'


  resources :prototypes, only: [:index, :new, :create, :show, :edit, :destroy, :update] do
    resources :comments, only: [:create,:update]
  end


  resources :users, only: [:show, :edit, :update]
  end

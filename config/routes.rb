Rails.application.routes.draw do
  root 'users#index'
  devise_for :users

  resource :users
  devise_scope :user do
    get 'sign_in', to: 'devise/sessions#new'
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  devise_for :users
  root "inquiries#index"

  resources :inquiries
end

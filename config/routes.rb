Rails.application.routes.draw do
  devise_for :users
  root to: 'file_reports#index'
  resources :books
  resources :file_reports
end

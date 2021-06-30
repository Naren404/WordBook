Rails.application.routes.draw do
  devise_for :users

  resources :words,:word_categories
  root "words#index"
end

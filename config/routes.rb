Rails.application.routes.draw do
  devise_for :users

  resources :words,:word_categories
  resources :links, except:[:show]
  root "words#index"
end

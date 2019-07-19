Rails.application.routes.draw do
  #get 'donuts/index'
  #get 'donuts/show'
  #get 'donuts/new'
  #get 'donuts/edit'

  resources :donuts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

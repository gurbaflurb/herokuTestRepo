Rails.application.routes.draw do
  resources :add_flights
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect('add_flights#/add_vacation')
end

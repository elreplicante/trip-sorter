TripSorter::Application.routes.draw do
  resources :tickets
  root 'tickets#index'
end

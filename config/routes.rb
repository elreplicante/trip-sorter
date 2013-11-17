TripSorter::Application.routes.draw do
  # get "tickets/index"
  # get "tickets/show"
  # get "tickets/new"
  # post "ticket", to: 'tickets#create', as: :create

  resources :tickets
end

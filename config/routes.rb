Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  resources :dishes
  get 'trays/:id' => "trays#show", as: "tray"
  delete 'trays/:id' => "trays#destroy"

  post 'line_items/:id/add' => "line_items#add_quantity", as: "line_item_add"
  post 'line_items/:id/reduce' => "line_items#reduce_quantity", as: "line_item_reduce"
  post 'line_items' => "line_items#create"
  get 'line_items/:id' => "line_items#show", as: "line_item"
  get 'thank_you' => "orders#thank_you", as: "thank_you"
  delete 'line_items/:id' => "line_items#destroy"

  resources :dishes  
  resources :orders
  
  root to: "dishes#index"
  
  namespace :admin do
    root to: "dishes#index"
    resources :dishes
    resources :orders
  end
end

Rails.application.routes.draw do
  root to: "contacts#new"
  resources :contact, only: [:new, :create]
end

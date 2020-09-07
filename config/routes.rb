Rails.application.routes.draw do
  root to: "contacts#new"
  post "/contacts", to: "contacts#create"
end

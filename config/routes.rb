Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :openings
  resources :applicants
end

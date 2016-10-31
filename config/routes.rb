Rails.application.routes.draw do
  root to: 'openings#index'
  resources :opening
  resources :applicant
end

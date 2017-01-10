Rails.application.routes.draw do
  resources :properties
  root to: redirect('/properties')
end

Rails.application.routes.draw do
  resources :volunteers
  resources :fixed_schedulings
  resources :experimental_schedulings
  resources :walkings
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

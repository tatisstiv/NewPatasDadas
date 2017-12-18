Rails.application.routes.draw do
  resources :adopters
  resources :stock_flows
  resources :stocks
  devise_for :volunteers, controllers: { registrations: 'registrations' }
  resources :landing_pages
  root 'landing_pages#index'
  
  get "/volunteers/waiting_approval", to: "registration_approval#waiting_approval", as: "waiting_approval"
  get "/volunteers/waiting_approval/:id", to: "registration_approval#show", as: "show_registration_request"
  post "/volunteers/waiting_approval/:id", to: "registration_approval#approve", as: "approve"
  delete "/volunteers/waiting_approval/:id", to: "registration_approval#reject", as: "reject"
  resources :volunteers
  get "/app/views/volunteers/index.html.erb", to: "volunteers#index", as: "index" 
  
  get "/experimental_schedulings/animal_choices", to: "experimental_schedulings#animal_choices", as: "experimental_animal_choices"
  resources :experimental_schedulings, except: :new
  get "/experimental_schedulings/new/:animal_id", to: "experimental_schedulings#new", as: "new_experimental_scheduling"
  get "/app/views/experimental_schedulings/index.html.erb", to: "experimental_schedulings#index", as: "index2"
    
  get "/fixed_schedulings/animal_choices", to: "fixed_schedulings#animal_choices", as: "fixed_animal_choices"
  resources :fixed_schedulings, except: :new
  get "/fixed_schedulings/new/:animal_id", to: "fixed_schedulings#new", as: "new_fixed_scheduling"
  get "/app/views/fixed_schedulings/index.html.erb", to: "fixed_schedulings#index", as: "index1"
  
  resources :walkings
  get "/app/views/walkings/index.html.erb", to: "walkings#index", as: "index3"
  resources :animals
  get "/app/views/animals/index.html.erb", to: "animals#index", as: "index4"

  resources :stock_flows
  get "/app/views/stock_flows/index.html.erb", to: "stock_flows#index"
  resources :stocks
  get "/app/views/stocks/index.html.erb", to: "stocks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

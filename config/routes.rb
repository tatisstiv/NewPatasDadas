Rails.application.routes.draw do
  resources :agendamentos_fixos
  resources :agendamentos_experimentais
  resources :passeios
  resources :animals
  resources :voluntarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

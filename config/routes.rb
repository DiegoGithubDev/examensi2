Rails.application.routes.draw do
  resources :teachers
  resources :padres
  get 'profesores/new'
  get 'profesores/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

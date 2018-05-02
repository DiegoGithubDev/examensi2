Rails.application.routes.draw do
  get 'users/verificar_usuario'
  get 'users/login'
  get 'fathers/read_notes'
  resources :users
  resources :notes
  resources :students
  resources :courses
  resources :fathers
  resources :teachers
  resources :padres
  get 'profesores/new'
  get 'profesores/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  resources :locations
  resources :infrastructures
  resources :estudiantes
  resources :paralelos
  resources :cursos
  resources :inscripcions
  resources :tipo_infraccions
  resources :infraccions
  resources :vehiculos
  resources :infractors
  resources :policia
  get 'mulct/index'

  get 'users/verificar_usuario'
  get 'users/login'
  get 'users/logout'
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
  get 'mulct/index'
  get 'mulct/new'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do

  resources :cursos
  resources :aulas
  resources :usuarios

  resources :disciplinas

end

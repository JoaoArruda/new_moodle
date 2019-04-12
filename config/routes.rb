Rails.application.routes.draw do


  resources :trabalhos

  resources :cursos
  resources :aulas

  resources :usuarios

  resources :disciplinas

end

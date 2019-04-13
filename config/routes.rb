Rails.application.routes.draw do


  resources :professores
  resources :alunos
  resources :trabalhos

  resources :cursos
  resources :aulas

  resources :usuarios

  resources :disciplinas

end

Rails.application.routes.draw do


  resources :notas
  resources :professores
  resources :alunos
  resources :trabalhos

  resources :cursos
  resources :aulas

  resources :usuarios

  resources :disciplinas

end

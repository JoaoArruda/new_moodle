Rails.application.routes.draw do



  resources :nota_trab
  resources :presencas
  resources :matriculas

  resources :notas
  resources :professores
  resources :alunos

  resources :trabalhos

  resources :cursos
  resources :aulas

  resources :usuarios

  resources :disciplinas

end

json.extract! nota_trab, :id, :nota, :aluno_id, :professor_id, :disciplina_id, :created_at, :updated_at
json.url nota_trab_url(nota_trab, format: :json)

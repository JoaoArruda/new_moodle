json.extract! usuario, :id, :nome_aluno, :pai, :mae, :endereco, :documento, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)

class Disciplina < ApplicationRecord
    validates :nome, :carga_horaria, presence:  true
end

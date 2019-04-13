class Usuario < ApplicationRecord

    validates :nome_aluno, :documento, :pai, :mae, :endereco, presence: true

end

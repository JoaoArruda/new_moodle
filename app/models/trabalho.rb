class Trabalho < ApplicationRecord
  belongs_to :disciplina
  validates :descricao, :disciplina, :data_de_entrega, presence: true

end

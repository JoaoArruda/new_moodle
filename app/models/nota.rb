class Nota < ApplicationRecord
  belongs_to :aluno
  belongs_to :professor
  belongs_to :disciplina

  validates :nota_minima_float, numericality: { greater_than_or_equal_to: 0, 
                                           less_than_or_equal_to: 10,
                message: "A 'nota' deve ser entre 0 e 10" }
end

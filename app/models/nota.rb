class Nota < ApplicationRecord
  belongs_to :aluno
  belongs_to :professor
  belongs_to :disciplina
end

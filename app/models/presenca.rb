class Presenca < ApplicationRecord
  belongs_to :curso
  belongs_to :aluno
  belongs_to :professor
end

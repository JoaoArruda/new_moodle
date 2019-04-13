class Aula < ApplicationRecord
  belongs_to :disciplina

  validates :disciplina, :data, :objetivo, :realizado, presence:true

end

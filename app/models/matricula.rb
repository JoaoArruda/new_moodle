class Matricula < ApplicationRecord
  belongs_to :usuario
  belongs_to :curso

  
end

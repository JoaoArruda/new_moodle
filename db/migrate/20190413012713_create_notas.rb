class CreateNotas < ActiveRecord::Migration[5.2]
  def change
    create_table :notas do |t|
      t.float :nota
      t.belongs_to :aluno, foreign_key: true
      t.belongs_to :professor, foreign_key: true
      t.belongs_to :disciplina, foreign_key: true

      t.timestamps
    end
  end
end

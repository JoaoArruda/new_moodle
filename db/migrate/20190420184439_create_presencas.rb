class CreatePresencas < ActiveRecord::Migration[5.2]
  def change
    create_table :presencas do |t|
      t.string :disciplina
      t.string :belongs_to
      t.string :aluno
      t.string :belongs_to
      t.date :data
      t.belongs_to :curso, foreign_key: true

      t.timestamps
    end
  end
end

class CreateAlunos < ActiveRecord::Migration[5.2]
  def change
    create_table :alunos do |t|
      t.belongs_to :usuario, foreign_key: true

      t.timestamps
    end
  end
end

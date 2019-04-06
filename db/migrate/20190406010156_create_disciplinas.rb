class CreateDisciplinas < ActiveRecord::Migration[5.2]
  def change
    create_table :disciplinas do |t|
      t.string :nome
      t.integer :carga_horaria

      t.timestamps
    end
  end
end

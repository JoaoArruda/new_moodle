class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nome_aluno
      t.string :pai
      t.string :mae
      t.string :endereco
      t.integer :documento

      t.timestamps
    end
  end
end

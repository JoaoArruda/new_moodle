class CreateMatriculas < ActiveRecord::Migration[5.2]
  def change
    create_table :matriculas do |t|
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :curso, foreign_key: true

      t.timestamps
    end
  end
end

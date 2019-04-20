class AddNotaMinimaToNota < ActiveRecord::Migration[5.2]
  def change
    add_column :notas, :nota_minima_float, :string
  end
end

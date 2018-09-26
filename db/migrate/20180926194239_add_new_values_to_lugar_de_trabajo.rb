class AddNewValuesToLugarDeTrabajo < ActiveRecord::Migration[5.1]
  def change
    add_column :lugar_de_trabajos, :direccion, :string
    add_column :lugar_de_trabajos, :descripcion, :string
  end
end

class CreateInfractors < ActiveRecord::Migration[5.1]
  def change
    create_table :infractors do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :numero_de_licencia
      t.string :fecha_de_emision
      t.string :fecha_de_vencimiento
      t.string :sexo
      t.string :nacionalidad

      t.timestamps
    end
  end
end

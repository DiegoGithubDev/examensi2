class CreateEstudiantes < ActiveRecord::Migration[5.1]
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno

      t.timestamps
    end
  end
end

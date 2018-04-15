class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :nombre
      t.string :apellido
      t.string :celular
      t.string :direccion

      t.timestamps
    end
  end
end

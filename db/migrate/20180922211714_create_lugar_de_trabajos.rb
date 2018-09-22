class CreateLugarDeTrabajos < ActiveRecord::Migration[5.1]
  def change
    create_table :lugar_de_trabajos do |t|
      t.string :zona
      t.float :latitud
      t.float :longitud
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end

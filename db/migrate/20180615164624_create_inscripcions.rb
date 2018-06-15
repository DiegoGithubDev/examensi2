class CreateInscripcions < ActiveRecord::Migration[5.1]
  def change
    create_table :inscripcions do |t|
      t.string :fecha
      t.integer :estudiante_id
      t.integer :curso_id
      t.integer :monto

      t.timestamps
    end
  end
end

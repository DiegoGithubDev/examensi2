class CreateTipoInfraccions < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_infraccions do |t|
      t.string :nombre
      t.integer :monto

      t.timestamps
    end
  end
end

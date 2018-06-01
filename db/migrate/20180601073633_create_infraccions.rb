class CreateInfraccions < ActiveRecord::Migration[5.1]
  def change
    create_table :infraccions do |t|
      t.string :fecha
      t.integer :infractor_id
      t.integer :policia_id
      t.integer :tipo_infraccion_id
      t.integer :vehiculo_id
      t.integer :monto_infracion

      t.timestamps
    end
  end
end

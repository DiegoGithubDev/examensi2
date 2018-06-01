class CreateVehiculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vehiculos do |t|
      t.string :placa
      t.string :marca
      t.string :modelo
      t.string :color

      t.timestamps
    end
  end
end

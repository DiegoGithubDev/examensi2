class CreateInfrastructures < ActiveRecord::Migration[5.1]
  def change
    create_table :infrastructures do |t|
      t.string :nombre
      t.string :detalle

      t.timestamps
    end
  end
end

class CreateRastreos < ActiveRecord::Migration[5.1]
  def change
    create_table :rastreos do |t|
      t.float :latitud
      t.float :longitud
      t.string :image
      t.references :empleado, foreign_key: true

      t.timestamps
    end
  end
end

class CreatePolicia < ActiveRecord::Migration[5.1]
  def change
    create_table :policia do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :cargo

      t.timestamps
    end
  end
end

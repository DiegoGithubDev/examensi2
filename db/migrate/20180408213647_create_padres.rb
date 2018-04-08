class CreatePadres < ActiveRecord::Migration[5.1]
  def change
    create_table :padres do |t|
      t.string :name
      t.string :apellido

      t.timestamps
    end
  end
end

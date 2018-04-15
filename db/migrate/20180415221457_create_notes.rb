class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.references :teacher, foreign_key: true
      t.references :student, foreign_key: true
      t.string :materia
      t.string :fecha_destino
      t.string :body
      t.integer :estado

      t.timestamps
    end
  end
end

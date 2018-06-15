class CreateCursos < ActiveRecord::Migration[5.1]
  def change
    create_table :cursos do |t|
      t.integer :numero

      t.timestamps
    end
  end
end

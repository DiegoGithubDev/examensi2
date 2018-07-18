class AddGradoToCurso < ActiveRecord::Migration[5.1]
  def change
    add_column :cursos, :grado, :string
  end
end

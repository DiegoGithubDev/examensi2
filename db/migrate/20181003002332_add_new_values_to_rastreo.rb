class AddNewValuesToRastreo < ActiveRecord::Migration[5.1]
  def change
    add_column :rastreos, :fecha, :string
  end
end

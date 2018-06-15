class CreateParalelos < ActiveRecord::Migration[5.1]
  def change
    create_table :paralelos do |t|
      t.string :letra

      t.timestamps
    end
  end
end

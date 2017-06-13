class CreateTipos < ActiveRecord::Migration[5.0]
  def change
    create_table :tipos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end

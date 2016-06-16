class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :name
      t.integer :votos
      t.integer :disponible
      t.string :instancia
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

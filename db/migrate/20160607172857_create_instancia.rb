class CreateInstancia < ActiveRecord::Migration
  def change
    create_table :instancia do |t|
      t.string :name
      t.integer :votos
      t.integer :disponible
      t.text :descripcion
      t.string :winner
      t.string :otherx

      t.timestamps null: false
    end
  end
end

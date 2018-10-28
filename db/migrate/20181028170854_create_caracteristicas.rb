class CreateCaracteristicas < ActiveRecord::Migration[5.2]
  def change
    create_table :caracteristicas do |t|
      t.string :nome
      t.references :produto, foreign_key: true

      t.timestamps
    end
  end
end

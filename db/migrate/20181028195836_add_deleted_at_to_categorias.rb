class AddDeletedAtToCategorias < ActiveRecord::Migration[5.2]
  def change
    add_column :categorias, :deleted_at, :datetime
    add_index :categorias, :deleted_at
  end
end

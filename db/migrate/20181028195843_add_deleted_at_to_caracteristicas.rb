class AddDeletedAtToCaracteristicas < ActiveRecord::Migration[5.2]
  def change
    add_column :caracteristicas, :deleted_at, :datetime
    add_index :caracteristicas, :deleted_at
  end
end

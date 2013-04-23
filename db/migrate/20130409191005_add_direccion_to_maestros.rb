class AddDireccionToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :direccion, :string
  end
end

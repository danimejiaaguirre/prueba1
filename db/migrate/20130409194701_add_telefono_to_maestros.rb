class AddTelefonoToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :telefono, :string
  end
end

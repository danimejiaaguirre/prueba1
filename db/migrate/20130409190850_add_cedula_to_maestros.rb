class AddCedulaToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :cedula, :string
  end
end

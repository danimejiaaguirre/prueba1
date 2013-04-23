class AddFchNacimientoToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :fch_nacimiento, :date
  end
end

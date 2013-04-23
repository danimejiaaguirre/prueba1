class AddMateriaToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :materia_id, :integer
  end
end

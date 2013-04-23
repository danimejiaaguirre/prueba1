class AddCursoToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :curso_id, :integer
  end
end

class AddDireccionToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :direccion, :string
  end
end

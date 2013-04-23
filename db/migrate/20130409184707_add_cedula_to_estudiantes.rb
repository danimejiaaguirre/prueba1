class AddCedulaToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :cedula, :string
  end
end

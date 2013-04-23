class AddFchNacimientoToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :fch_nacimiento, :date
  end
end

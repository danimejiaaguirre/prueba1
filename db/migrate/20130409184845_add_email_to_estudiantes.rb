class AddEmailToEstudiantes < ActiveRecord::Migration
  def change
    add_column :estudiantes, :email, :string
  end
end

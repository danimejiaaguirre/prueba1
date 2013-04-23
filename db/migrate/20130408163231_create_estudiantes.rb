class CreateEstudiantes < ActiveRecord::Migration
  def change
    create_table :estudiantes do |t|
      t.string :nombre
      t.references :curso

      t.timestamps
    end
    add_index :estudiantes, :curso_id
  end
end

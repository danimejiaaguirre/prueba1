class CreateHorarios < ActiveRecord::Migration
  def change
    create_table :horarios do |t|
      t.references :materia
      t.references :maestro
      t.references :curso
      t.date :dia
      t.string :hora
      t.string :aula

      t.timestamps
    end
    add_index :horarios, :materia_id
    add_index :horarios, :maestro_id
    add_index :horarios, :curso_id
  end
end

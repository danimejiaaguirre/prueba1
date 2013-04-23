class CreateMaestros < ActiveRecord::Migration
  def change
    create_table :maestros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end

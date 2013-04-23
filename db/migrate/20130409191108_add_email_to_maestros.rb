class AddEmailToMaestros < ActiveRecord::Migration
  def change
    add_column :maestros, :email, :string
  end
end

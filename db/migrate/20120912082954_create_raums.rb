class CreateRaums < ActiveRecord::Migration
  def change
    create_table :raums do |t|
      t.string :name
      t.integer :pers_anz
      t.integer :groesse
      t.string :etage
      t.integer :status

      t.timestamps
    end
  end
end

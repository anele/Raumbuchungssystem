class CreateBesitzts < ActiveRecord::Migration
  def change
    create_table :besitzts do |t|
      t.integer :raum_id
      t.integer :ausstattung_id

      t.timestamps
    end
  end
end

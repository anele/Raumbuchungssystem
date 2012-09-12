class CreateBuchungs < ActiveRecord::Migration
  def change
    create_table :buchungs do |t|
      t.integer :buchungsnr
      t.datetime :anfangszeit
      t.datetime :endzeit
      t.integer :raum_id
      t.integer :kunde_id

      t.timestamps
    end
  end
end

class CreateKundes < ActiveRecord::Migration
  def change
    create_table :kundes do |t|
      t.string :firma
      t.string :name
      t.string :vorname
      t.string :tel
      t.string :fax
      t.string :email
      t.integer :plz
      t.string :ort
      t.string :strasse_nr
      t.integer :buchung_id

      t.timestamps
    end
  end
end

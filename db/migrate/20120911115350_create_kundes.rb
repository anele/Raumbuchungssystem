class CreateKundes < ActiveRecord::Migration
  def change
    create_table :kundes do |t|
      t.primary_key :kunden_id
      t.string :firma
      t.string :name
      t.string :vorname
      t.string :tel
      t.string :fax
      t.string :email
      t.integer :plz
      t.string :ort
      t.string :strasse
      t.string :haus_nr
      t.references :raum

      t.timestamps
    end
    add_index :kundes, :raum_id
  end
end

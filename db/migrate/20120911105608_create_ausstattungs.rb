class CreateAusstattungs < ActiveRecord::Migration
  def change
    create_table :ausstattungs do |t|
      t.primary_key :ausst_id
      t.string :bezeichnung

      t.timestamps
    end
  end
end

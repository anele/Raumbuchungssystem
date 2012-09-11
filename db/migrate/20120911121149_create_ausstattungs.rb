class CreateAusstattungs < ActiveRecord::Migration
  def change
    create_table :ausstattungs do |t|
      t.string :bezeichnung

      t.timestamps
    end
  end
end

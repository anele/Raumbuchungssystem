class AddStatusToBuchungs < ActiveRecord::Migration
  def change
    add_column :buchungs, :status, :string
  end
end

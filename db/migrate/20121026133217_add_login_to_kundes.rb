class AddLoginToKundes < ActiveRecord::Migration
  def change
    add_column :kundes, :login, :string
    add_column :kundes, :password, :string
  end
end

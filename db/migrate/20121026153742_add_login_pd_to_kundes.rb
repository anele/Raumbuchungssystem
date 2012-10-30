class AddLoginPdToKundes < ActiveRecord::Migration
  def change
    add_column :kundes, :password_digest, :string
  end
end

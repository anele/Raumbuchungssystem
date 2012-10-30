class AddPwConfirmationToKundes < ActiveRecord::Migration
  def change
    add_column :kundes, :password_confirmation, :string
  end
end

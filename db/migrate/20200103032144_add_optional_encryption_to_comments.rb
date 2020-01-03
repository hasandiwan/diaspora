class AddOptionalEncryptionToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :is_encrypted, :boolean, :default => false
  end
end

class AddOptionalEncryptionToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :is_encrypted, :boolean, :default => false
  end
end

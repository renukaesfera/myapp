class AddPasswordExpirableToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :password_changed_at, :datetime
  end
  add_index :pages, :password_changed_at
end

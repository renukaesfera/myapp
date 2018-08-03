class AddExpirableToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :last_activity_at, :datetime
    add_column :pages, :expired_at, :datetime
  end
  add_index :pages, :last_activity_at
add_index :pages, :expired_at
end

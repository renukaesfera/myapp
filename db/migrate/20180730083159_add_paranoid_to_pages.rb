class AddParanoidToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :paranoid_verification_code, :string
    add_column :pages, :paranoid_verification_attempt, :integer, default: 0
    add_column :pages, :paranoid_verified_at, :datetime
  end
  add_index :pages, :paranoid_verification_code
add_index :pages, :paranoid_verified_at
end

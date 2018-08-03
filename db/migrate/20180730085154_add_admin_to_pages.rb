class AddAdminToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :admin, :boolean
  end
end

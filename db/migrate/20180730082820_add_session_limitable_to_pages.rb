class AddSessionLimitableToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :unique_session_id, :string, :limit => 20
  end
end

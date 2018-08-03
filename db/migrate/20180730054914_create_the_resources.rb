class CreateTheResources < ActiveRecord::Migration[5.2]
  def change
    create_table :the_resources do |t|
      t.datetime :password_changed_at
      t.string :unique_session_id, :limit => 1
      t.datetime :last_activity_at
  	  t.datetime :expired_at
  	  t.string   :paranoid_verification_code
  	  t.integer  :paranoid_verification_attempt, default: 0
      t.datetime :paranoid_verified_at
      t.integer :security_question_id
  	  t.string :security_question_answer
      t.timestamps
    end
    add_index :the_resources, :last_activity_at
	add_index :the_resources, :expired_at
	add_index :the_resources, :paranoid_verification_code
	add_index :the_resources, :paranoid_verified_at
  end
end

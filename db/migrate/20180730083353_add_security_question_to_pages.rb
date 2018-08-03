class AddSecurityQuestionToPages < ActiveRecord::Migration[5.2]
  def change
    add_column :pages, :security_question_id, :integer
    add_column :pages, :security_question_answer, :string
  end
end

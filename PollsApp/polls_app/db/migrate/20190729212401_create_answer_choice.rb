class CreateAnswerChoice < ActiveRecord::Migration[5.2]
  def change
    create_table :answer_choices do |t|
      t.string :answer, null: false
      t.integer :question_id, null: false
      t.integer :poll_id, null: false
    end
  end
end

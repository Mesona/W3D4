class CreateAnswerchoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answerchoices do |t|
      t.integer 'question_id', null: false
      t.text 'answer_text', null: false

      t.timestamps
    end
    add_index :answerchoices, :question_id
  end
end

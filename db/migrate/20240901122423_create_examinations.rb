class CreateExaminations < ActiveRecord::Migration[7.2]
  def change
    create_table :examinations do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :category, null: false
      t.integer :status, null: false
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false
      t.integer :number_of_correct_answers, null: false
      t.integer :number_of_questions, null: false
      t.text :answers

      t.timestamps
    end

    add_index :examinations, :category
    add_index :examinations, :status
    add_index :examinations, :number_of_correct_answers
  end
end

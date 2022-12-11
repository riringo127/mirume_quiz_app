class CreateCorrectAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :correct_answers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end

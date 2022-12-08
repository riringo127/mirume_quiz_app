class CreateQuizzes < ActiveRecord::Migration[6.1]
  def change
    create_table :quizzes do |t|
      t.references :color, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end

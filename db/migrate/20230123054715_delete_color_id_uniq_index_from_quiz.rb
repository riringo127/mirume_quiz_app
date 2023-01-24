class DeleteColorIdUniqIndexFromQuiz < ActiveRecord::Migration[6.1]
  def change
    remove_index :quizzes, :color_id
    add_index :quizzes, :color_id
  end
end

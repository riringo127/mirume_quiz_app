class AddQuizFormatToQuizzes < ActiveRecord::Migration[6.1]
  def change
    add_column :quizzes, :quiz_format, :integer, default: 0, null: false
  end
end

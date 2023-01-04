class AddDisplayToIncorrectAnswers < ActiveRecord::Migration[6.1]
  def change
    add_column :incorrect_answers, :display, :integer, default: 0, null: false
  end
end

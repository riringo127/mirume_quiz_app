class CreateChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :choices do |t|
      t.string :content, null: false
      t.integer :is_answer, null: false, default: 0
      t.references :quiz, null: false, foreign_key: true

      t.timestamps
    end
  end
end

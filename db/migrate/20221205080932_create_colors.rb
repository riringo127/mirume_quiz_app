class CreateColors < ActiveRecord::Migration[6.1]
  def change
    create_table :colors do |t|
      t.string :name, null: false, index: { unique: true }
      t.string :code, null: false, index: { unique: true }
      t.string :css_class, null: false, index: { unique: true }
      t.integer :season_type, null: false, default: 0
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

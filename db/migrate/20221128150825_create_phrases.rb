class CreatePhrases < ActiveRecord::Migration[7.0]
  def change
    create_table :phrases do |t|
      t.string :content
      t.integer :time_day
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end

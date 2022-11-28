class CreatePhraseCountries < ActiveRecord::Migration[7.0]
  def change
    create_table :phrase_countries do |t|
      t.string :content
      t.references :country, null: false, foreign_key: true
      t.references :phrase, null: false, foreign_key: true

      t.timestamps
    end
  end
end

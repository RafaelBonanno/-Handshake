class PhraseCountry < ApplicationRecord
  belongs_to :country
  belongs_to :phrase
  has_one :favorite
end

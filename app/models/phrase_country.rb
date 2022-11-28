class PhraseCountry < ApplicationRecord
  belongs_to :country
  belongs_to :phrase
end

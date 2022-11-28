class Phrase < ApplicationRecord
  belongs_to :category
  has_many :phrases_country
end

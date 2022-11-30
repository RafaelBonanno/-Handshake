class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :phrase_country

  validates :phrase_country_id, uniqueness: true

end 

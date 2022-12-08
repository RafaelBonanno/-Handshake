class Country < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :tips, dependent: :destroy
  has_many :phrase_countries, dependent: :destroy
  has_many :favorites, through: :phrase_countries, source: :phrase_country

  # def create_picture(country)
  #   search_results = Unsplash::Photo.search(country)
  # end

end

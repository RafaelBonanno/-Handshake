class Country < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_many :tips, dependent: :destroy
  has_many :phrase_country, dependent: :destroy


  # def create_picture(country)
  #   search_results = Unsplash::Photo.search(country)
  # end

end

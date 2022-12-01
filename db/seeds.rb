# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.destroy_all
Trip.destroy_all
User.destroy_all
Country.destroy_all
PhraseCountry.destroy_all

user = User.create!(
  email: "traveller@handshake.com",
  password: "123456",
  username: "Mr.Rails"
)

categories = []

categories << Category.create!(
  name: "shopping"
)

categories << Category.create!(
  name: "Airport"
)

categories << Category.create!(
  name: "Eating out"
)

categories << Category.create!(
  name: "SOS"
)

categories << Category.create!(
  name: "Greetings"
)

categories << Category.create!(
  name: "Directions"
)

categories << Category.create!(
  name: "More"
)

germany = Country.create!(
  language: "German",
  name: "Germany"
)

german_tip_1 = Tip.create!(
  content: "Supermarkets are closed in Germany on Sunday",
  category_id: 1,
  country_id: 1
)

german_tip_2 = Tip.create!(
  content: "Frau Netto is never smiling but a smile never killed anyone - dont be the first victim",
  category_id: 1,
  country_id: 1
)

france = Country.create!(
  language: "French",
  name: "France"
)

spain = Country.create!(
  language: "Spanish",
  name: "Spain"
)

japan = Country.create!(
  language: "Japanese",
  name: "Japan"
)

Country.create!(
  language: "Italian",
  name: "Italy"

)

france_tip_1 = Tip.create!(
  content: "Most of the supermarkets are opened in France during the weekends !",
  category_id: 1,
  country_id: 2
)

france_tip_2 = Tip.create!(
  content: "Pains au Chocolat do not hurt",
  category_id: 1,
  country_id: 2
)

my_trip = Trip.create!(
  start_date: "29/11/2022",
  end_date: "30/11/2022",
  user_id: 1,
  country_id: 1
)

phrase_1 = Phrase.create!(
  content: "How much is this?",
  time_day: 1,
  category_id: 1
)

phrase_2 = Phrase.create!(
  content: "Where can I find..?",
  time_day: 1,
  category_id: 1
)

phrase_3 = Phrase.create!(
  content: "I am paying by card",
  time_day: 1,
  category_id: 1
)

Phrase.create!(
  content: "Do you have this in a different size?",
  time_day: 1,
  category_id: 1
)

Phrase.create!(
  content: "Please call an ambulance!",
  time_day: 1,
  category_id: 4
)

phrase_1_1 = PhraseCountry.create!(
  content: "Wie viel kostet das?",
  phrase_id: 1,
  country_id: 1
)

phrase_1_2 = PhraseCountry.create!(
  content: "Combien ca coute?",
  phrase_id: 1,
  country_id: 2
)


phrase_2_1 = PhraseCountry.create!(
  content: "Wo ist..?",
  phrase_id: 2,
  country_id: 1
)

phrase_2_2 = PhraseCountry.create!(
  content: "Ou sont les..?",
  phrase_id: 2,
  country_id: 2
)

phrase_3_1 = PhraseCountry.create!(
  content: "Mit karte bitte",
  phrase_id: 3,
  country_id: 1
)

phrase_3_2 = PhraseCountry.create!(
  content: "Par carte s'il vous plait",
  phrase_id: 3,
  country_id: 2
)

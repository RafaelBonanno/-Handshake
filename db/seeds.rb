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

german_tip = Tip.create!(
  content: "Supermarkets are closed in Germany on Sunday",
  category_id: 1,
  country_id: 1
)
france = Country.create!(
  language: "French",
  name: "France"
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

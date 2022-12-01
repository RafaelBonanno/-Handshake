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

# CATEGORIES

categories = []

categories << Category.create!(
  name: "Shopping"
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

# COUNTRIES

germany = Country.create!(
  language: "German",
  name: "Germany"
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

italy = Country.create!(
  language: "Italian",
  name: "Italy"
)
# TRIP

my_trip = Trip.create!(
  start_date: "29/11/2022",
  end_date: "30/11/2022",
  user_id: 1,
  country_id: 1
)
# TIPS

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

german_tip_3 = Tip.create!(
  content: "The emergency telefon number in Germany is 112",
  category_id: 4,
  country_id: 1
)

france_tip_1 = Tip.create!(
  content: "Most of the supermarkets stay open in France during the weekends!",
  category_id: 1,
  country_id: 2
)

france_tip_2 = Tip.create!(
  content: "Pains au Chocolat do not hurt",
  category_id: 1,
  country_id: 2
)

france_tip_3 = Tip.create!(
  content: "The emergency telefon number in France is 112",
  category_id: 4,
  country_id: 2
)

italian_tip_1 = Tip.create!(
  content: "Most of the supermarkets stay open in Italy during the weekends!",
  category_id: 1,
  country_id: 5
)

italian_tip_2 = Tip.create!(
  content: "OVS is a nice and affordable italian clothes store",
  category_id: 1,
  country_id: 5
)

itaian_tip_3 = Tip.create!(
  content: "The emergency telefon number in Italy is 112",
  category_id: 4,
  country_id: 5
)

# CORE PHRASES SHOPPING

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

# CORE PHRASES DIRECTIONS

Phrase.create!(
  content: "Which way is..?",
  time_day: 1,
  category_id: 6
)

Phrase.create!(
  content: "How far is..?",
  time_day: 1,
  category_id: 6
)

Phrase.create!(
  content: "How can I get to..?",
  time_day: 1,
  category_id: 6
)

# CORE PHRASES SOS

Phrase.create!(
  content: "I need help!",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "I am hurt!",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "There's a fire!",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "I need an ambulance",
  time_day: 1,
  category_id: 4
)

# CORE PHRASES GREETINGS

Phrase.create!(
  content: "Hello!",
  time_day: 1,
  category_id: 5
)

Phrase.create!(
  content: "Goodbye!",
  time_day: 1,
  category_id: 5
)

Phrase.create!(
  content: "Thank you!",
  time_day: 1,
  category_id: 5
)

Phrase.create!(
  content: "You're welcome!",
  time_day: 1,
  category_id: 5
)

Phrase.create!(
  content: "Nice to meet you!",
  time_day: 1,
  category_id: 5
)

Phrase.create!(
  content: "Have a nice day!",
  time_day: 1,
  category_id: 5
)

# TRANSLATED PHRASES SHOPPING

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

phrase_1_5 = PhraseCountry.create!(
  content: "Quanto costa?",
  phrase_id: 1,
  country_id: 5
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

phrase_2_5 = PhraseCountry.create!(
  content: "Dove sta..?",
  phrase_id: 2,
  country_id: 5
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

phrase_3_5 = PhraseCountry.create!(
  content: "Con la carta prego",
  phrase_id: 3,
  country_id: 5
)

# TRANSLATED PHRASES DIRECTIONS

PhraseCountry.create!(
  content: "In che direzione sta..?",
  phrase_id: 4,
  country_id: 5
)

PhraseCountry.create!(
  content: "Quanto lontano é..?",
  phrase_id: 5,
  country_id: 5
)

PhraseCountry.create!(
  content: "Come faccio per arrivare a..?",
  phrase_id: 6,
  country_id: 5
)

# TRANSLATED PHRASES GREETINGS

PhraseCountry.create!(
  content: "Salve!",
  phrase_id: 7,
  country_id: 5
)

PhraseCountry.create!(
  content: "Arrivederci!",
  phrase_id: 8,
  country_id:5
)

PhraseCountry.create!(
  content: "Grazie!",
  phrase_id: 9,
  country_id:5
)

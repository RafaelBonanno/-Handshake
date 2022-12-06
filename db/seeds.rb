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
  email: "traveler@handshake.com",
  password: "123456",
  username: "Mr.Rails"
)

# CATEGORIES

categories = []
countries = []

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

countries << Country.create!(
  language: "German",
  name: "Germany",
  code: "de-de"
)

countries << Country.create!(
  language: "French",
  name: "France",
  code: "fr-fr"
)

countries << Country.create!(
  language: "Spanish",
  name: "Spain",
  code: "es-es"
)

countries << Country.create!(
  language: "Japanese",
  name: "Japan"
)

countries << Country.create!(
  language: "Italian",
  name: "Italy",
  code: "it-it"
)

countries << Country.create!(
  language: "Dutch",
  name: "Netherlands"
)

countries << Country.create!(
  language: "French",
  name: "Belgium",
  code: "fr-fr"
)

countries << Country.create!(
  language: "English",
  name: "Great Britain",
  code: "en-gb"
)

countries << Country.create!(
  language: "Swedish",
  name: "Sweden"
)

countries << Country.create!(
  language: "Polish",
  name: "Poland"
)

countries << Country.create!(
  language: "English",
  name: "Ireland",
  code: "en-ie"
)

countries << Country.create!(
  language: "Hungarian",
  name: "Hungary"
)

countries << Country.create!(
  language: "Czech",
  name: "Czech Republic"
)

countries << Country.create!(
  language: "German",
  name: "Austria",
  code: "de-at"
)

countries << Country.create!(
  language: "Portuguese",
  name: "Portugal"
)
countries << Country.create!(
  language: "Greek",
  name: "Greece"
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
  content: "Most of shops don't accept credit card",
  category_id: 1,
  country_id: 1
)

german_tip_3 = Tip.create!(
  content: "The emergency phone number in Germany is 112",
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
  content: "The emergency phone number in France is 112",
  category_id: 4,
  country_id: 2
)

france_tip_4 = Tip.create!(
  content: "In France people kiss each other on the cheek. This is called la bise",
  category_id: 5,
  country_id: 2
)

france_tip_5 = Tip.create!(
  content: "French people like being greeted in French",
  category_id: 5,
  country_id: 2
)

france_tip_6 = Tip.create!(
  content: "The emegergency number is France is either 18 or 112",
  category_id: 4,
  country_id: 2
)

spanish_tip_1 = Tip.create!(
  content: "Spanish dinner time is around 9PM",
  category_id: 3,
  country_id: 3
)

spanish_tip_1 = Tip.create!(
  content: "Tapas restaurants are generally open until late in the morning",
  category_id: 3,
  country_id: 3
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
phrase_4 = Phrase.create!(
  content: "Is it possible to return this item?",
  time_day: 1,
  category_id: 1
)

phrase_5 = Phrase.create!(
  content: "Where is the changing room?",
  time_day: 1,
  category_id: 1
)

phrase_6 = Phrase.create!(
  content: "Do you have this in size...?",
  time_day: 1,
  category_id: 1
)

phrase_4 = Phrase.create!(
  content: "Do you have an online shop?",
  time_day: 1,
  category_id: 1
)

phrase_5 = Phrase.create!(
  content: "Where can I pay?",
  time_day: 1,
  category_id: 1)

  phrase_6 = Phrase.create!(
    content: "I need a bigger size",
    time_day: 1,
    category_id: 2
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
  content: "I need help! Do you speak English?",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "I am hurt! Where is the nearest hospital?",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "It's burning!",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "I need an ambulance",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "Call the police!",
  time_day: 1,
  category_id: 4
)

Phrase.create!(
  content: "I am lost, can you please help me?",
  time_day: 1,
  category_id: 4
)

#CORE PHRASES EATING OUT

Phrase.create!(
  content: "The bill, please",
  time_day: 1,
  category_id: 3
)

Phrase.create!(
  content: "Do you have any vegeterian option?",
  time_day: 1,
  category_id: 3
)

Phrase.create!(
  content: "Can I pay with card?",
  time_day: 1,
  category_id: 3
)

Phrase.create!(
  content: "Do you have a menu with allergens?",
  time_day: 1,
  category_id: 3
)

Phrase.create!(
  content: "Can we split the bill?",
  time_day: 1,
  category_id: 3
)

Phrase.create!(
  content: "Is this dish spicy?",
  time_day: 1,
  category_id: 3
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
  content: "Mit Karte bitte",
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

phrase_4_1 = PhraseCountry.create!(
  content: "kann ich diesen Artikel zurückgeben?",
  phrase_id: 4,
  country_id: 1
)

phrase_5_1 = PhraseCountry.create!(
  content: "Wo ist die Umkleidekabine?",
  phrase_id: 5,
  country_id: 1)

  phrase_6_1 = PhraseCountry.create!(
    content: "Haben Sie das im Grosse...?",
    phrase_id: 6,
    country_id: 1
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
  phrase_id: 13,
  country_id: 5
)

PhraseCountry.create!(
  content: "Hallo!",
  phrase_id: 13,
  country_id: 1
)

PhraseCountry.create!(
  content: "Arrivederci!",
  phrase_id: 14,
  country_id: 5
)

PhraseCountry.create!(
  content: "Aufwiedersehen!",
  phrase_id: 14,
  country_id: 1
)

PhraseCountry.create!(
  content: "Grazie!",
  phrase_id: 15,
  country_id: 5
)

PhraseCountry.create!(
  content: "Danke!",
  phrase_id: 15,
  country_id: 1
)

PhraseCountry.create!(
  content: "Prego!",
  phrase_id: 16,
  country_id: 5
)

PhraseCountry.create!(
  content: "Bitte!",
  phrase_id: 16,
  country_id: 1
)

PhraseCountry.create!(
  content: "Piacere di conoscerti!",
  phrase_id: 17,
  country_id: 5
)

PhraseCountry.create!(
  content: "Schön, dich kennen zu lernen!",
  phrase_id: 17,
  country_id: 1
)

PhraseCountry.create!(
  content: "Buona giornata!",
  phrase_id: 18,
  country_id: 5
)

PhraseCountry.create!(
  content: "Schönen Tag!",
  phrase_id: 18,
  country_id: 1
)

# TRANSLATED PHRASES SOS

PhraseCountry.create!(
  content: "Ho bisgono di aiuto!",
  phrase_id: 7,
  country_id: 5
)

PhraseCountry.create!(
  content: "Ich brauche Hilfe!",
  phrase_id: 13,
  country_id: 1
)

PhraseCountry.create!(
  content: "Sono ferito!",
  phrase_id: 8,
  country_id: 5
)

PhraseCountry.create!(
  content: "Ich bin verletzt!",
  phrase_id: 14,
  country_id: 1
)

PhraseCountry.create!(
  content: "C'é un incendio!",
  phrase_id: 9,
  country_id: 5
)

PhraseCountry.create!(
  content: "Es brennt!",
  phrase_id: 9,
  country_id: 1
)

PhraseCountry.create!(
  content: "Chiamate un'ambulanza!",
  phrase_id: 10,
  country_id: 5
)

PhraseCountry.create!(
  content: "Ruf einen Krankenwagen!",
  phrase_id: 10,
  country_id: 1
)

PhraseCountry.create!(
  content: "Chiamate la polizia!",
  phrase_id: 11,
  country_id: 5
)

PhraseCountry.create!(
  content: "Ruf die Polizei an!",
  phrase_id: 11,
  country_id: 1
)

PhraseCountry.create!(
  content: "Mi sono perso, puoi aiutarmi?",
  phrase_id: 12,
  country_id: 5
)

PhraseCountry.create!(
  content: "Ich bin verloren, kannst du mir helfen?",
  phrase_id: 12,
  country_id: 1
)

PhraseCountry.create!(
  content: "J'ai besoin d'aide! Vous parlez un peu anglais?",
  phrase_id: 13,
  country_id: 2
)

PhraseCountry.create!(
  content: "Je me suis fait mal ! Ou est l'hopital le plus proche ?",
  phrase_id: 14,
  country_id: 2
)

PhraseCountry.create!(
  content: "Ça brule!",
  phrase_id: 15,
  country_id: 2
)

PhraseCountry.create!(
  content: "J'ai besoin d'une ambulance",
  phrase_id: 16,
  country_id: 2
)

PhraseCountry.create!(
  content: "Appelez la police!",
  phrase_id: 17,
  country_id: 2
)

PhraseCountry.create!(
  content: "Je suis perdu, vous pouvez m'aider?",
  phrase_id: 18,
  country_id: 2
)

PhraseCountry.create!(
  content: "La cuenta, por favor",
  phrase_id: 19,
  country_id: 3
)

PhraseCountry.create!(
  content: "¿Tienen alguna opción vegetariana?",
  phrase_id: 20,
  country_id: 3
)

PhraseCountry.create!(
  content: "¿Puedo pagar con tarjeta?",
  phrase_id: 21,
  country_id: 3
)

PhraseCountry.create!(
  content: "¿Tienen un menú con los alérgenos?",
  phrase_id: 22,
  country_id: 3
)

PhraseCountry.create!(
  content: "¿Podemos dividir la cuenta?",
  phrase_id: 23,
  country_id: 3
)

PhraseCountry.create!(
  content: "¿Este plato es picante?",
  phrase_id: 24,
  country_id: 3
)

Phrase.create!(
  content: "I'd like to take this home please",
  time_day: 1,
  category_id: 3
)

Phrase.create!(
  content: "The food was delicious",
  time_day: 1,
  category_id: 3
)

PhraseCountry.create!(
  content: "Voy a llevarme esto a casa por favor",
  country_id: 3,
  phrase_id: 31
)

PhraseCountry.create!(
  content: "La comida estaba deliciosa",
  country_id: 3,
  phrase_id: 32
)

PhraseCountry.create!(
  content: "Gibt es bei euch einen Online-Shop?",
  country_id: 1,
  phrase_id: 7
)

PhraseCountry.create!(
  content: "Wo kann ich bezahlen?",
  country_id: 1,
  phrase_id: 8
)

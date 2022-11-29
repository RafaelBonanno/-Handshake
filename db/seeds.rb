# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Trip.destroy_all
User.destroy_all
Category.destroy_all
Country.destroy_all


user = User.create!(
  email: "traveler@handshake.com",
  password: "1234567"
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
  name: "Germany",
  language: "German"
)

france = Country.create!(
  language: "French",
  name: "France"
)


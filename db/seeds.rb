# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Place.create(name: "Mexico City")
Place.create(name: "Charleston")
Place.create(name: "Beijing")
Place.create(name: "Amsterdam")

Entry.create(title: "Hot Nachos", description: "Spicy Nachos indeed", occurred_on: "2026-05-20", place_id: 1)
Entry.create(title: "Mexican Coke", description: "Nothing like real sugar cane", occurred_on: "2026-05-21", place_id: 1)

Entry.create(title: "Gold ole' Merica", description: "Hometown of Cracker Barrel", occurred_on: "2026-05-20", place_id: 2)
Entry.create(title: "Mid-tier Mexican Food", description: "They did have Mexican Coke though", occurred_on: "2026-05-21", place_id: 2)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
beach = Category.where(name: "Beach").first_or_create(name: "Beach")
lake = Category.where(name: "Lake").first_or_create(name: "Lake")
landmark = Category.where(name: "Landmark").first_or_create(name: "Landmark")
mountain = Category.where(name: "Mountain").first_or_create(name: "Mountain")
ocean_view = Category.where(name: "Ocean View").first_or_create(name: "Ocean View")
park = Category.where(name: "Park").first_or_create(name: "Park")
trail = Category.where(name: "Trail").first_or_create(name: "Trail")
waterfall = Category.where(name: "Waterfall").first_or_create(name: "Waterfall")

Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")
Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")
Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")
Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")
Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")
Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")
Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")
Place.where(name: "Stinson Beach").first_or_create(name: "Stinson Beach",) description: "beach", city: "bolinas", state: "ca")

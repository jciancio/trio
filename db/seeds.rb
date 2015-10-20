# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8

Product.create name: "Beer", description: "Wynwood Brewery", price_in_cents: 500, url: "beer.jpg"
Product.create name: "Vodka", description: "Absolut Vodka", price_in_cents: 5000, url: "absolut_vodka.png"
Product.create name: "Whiskey", description: "Fireball Whiskey", price_in_cents: 1000, url: "fireball.png"
Product.create name: "Tequila", description: "Patron and Lime", price_in_cents: 3000, url: "patron.png"
Product.create name: "Wine", description: "Redwood Creek", price_in_cents: 6000, url: "merlot.png"
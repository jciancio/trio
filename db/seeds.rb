# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ruby encoding: utf-8

Product.create name: "Beer", description: "Craft Beer", price_in_cents: 500, url: "beer.jpg", user_id: 1
Product.create name: "Vodka", description: "Triple Distilled", price_in_cents: 5000, url: "beer.jpg", user_id: 1
Product.create name: "Rum", description: "Spiced Rum", price_in_cents: 1000, url: "beer.jpg", user_id: 1
Product.create name: "Whiskey", description: "Johnnie Walker", price_in_cents: 3000, url: "beer.jpg", user_id: 1
Product.create name: "Wine", description: "Cabernet Sauvignon", price_in_cents: 6000, url: "beer.jpg", user_id: 1
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Business.create(name: "Chili's", address: "172 Main St", city: "Hingham", state: "MA", country: "USA", latitude: "1737236889", longitude: "23232323", phone: "781-304-4499", category: "pizza", parent_category: "food", url: "www.google.com")

Job.create(user_id: 1, business_id: 1, state: "unverified", start_date: "2001-02-03", end_date: "2001-04-03", position: "bartender")
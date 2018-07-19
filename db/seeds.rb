# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Card.create(number: 12345, summary: 'This is a Story Card', card_type: 'Story Card', status: 'New', points: 3, owner: 'Shane, Andrew', blocked: false, iteration: 'Not today' )
Card.create(number: 67890, summary: 'This is a Tech Card', card_type: 'Technical Card', status: 'New', points: 3, owner: 'Shane, Andrew', blocked: true, iteration: 'Not today' )
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

list_1 = List.create(title: "Shopping List")
#list_2 = List.create(title: "Sample Title 2")


item_a = Item.create(content: "Buy Milk", list_id: list_1.id)
#item_b = Item.create(content: "Buy a TV", list_id: list_2.id)




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(user_name: 'Kat')
Route.create(route_name: 'Home to Work', user_id: 1)
Coordinate.create(coordinate_number: 123456, english_word: 'Hello', foreign_word: 'Hola', route_id: 1)
Coordinate.create(coordinate_number: 789123, english_word: 'Goodbye', foreign_word: 'Ciao', route_id: 1)
Coordinate.create(coordinate_number: 456789, english_word: 'Kitchen', foreign_word: 'Cocina', route_id: 1)

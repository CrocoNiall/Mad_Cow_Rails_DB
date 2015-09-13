# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cow.create(name: 'Kevin', age: 33)
Cow.create(name: 'Bob', age: 13)

Person.create(name: 'Linda', age: 41)
Person.create(name: 'Niall', age: 23)
Person.create(name: 'James', age: 66)
Person.create(name: 'Ambar', age: 25)


# location, rating, person id, cow id

Attack.create(location: 'London', rating: 5, person_id: 1, cow_id: 2)
Attack.create(location: 'Newcastle', rating: 5, person_id: 2, cow_id: 1)
Attack.create(location: 'Manchester', rating: 2, person_id: 1, cow_id: 2)
Attack.create(location: 'Blackpool', rating: 5, person_id: 3, cow_id: 2)
Attack.create(location: 'London', rating: 4, person_id: 4, cow_id: 1)
Attack.create(location: 'Leeds', rating: 1, person_id: 1, cow_id: 2)
Attack.create(location: 'London', rating: 2, person_id: 1, cow_id: 1)

puts 'Seed Complete!'
puts "Cows: #{Cow.all.count}"
puts "People: #{Person.all.count}"
puts "Attacks: #{Attack.all.count}"

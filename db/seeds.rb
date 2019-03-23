# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


  Project.create! name: "Meet Mr. Miyagi", description: "Meet Mr. Miyagi", progress: 40, manager_id: 1
  Project.create! name: "Paint the fence", description: "Meet Mr. Miyagi", progress: 60, manager_id: 2
  Project.create! name: "Wax the car", description: "Meet Mr. Miyagi", progress: 70, manager_id: 1
  Project.create! name: "Sand the deck", description: "Meet Mr. Miyagi", progress: 10, manager_id: 2
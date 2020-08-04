# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:'Marcos', email:'marcos@marcos', password:123456, password_confirmation:12)
User.create!(name:'Carla', email:'carla@carla', password:123456, password_confirmation:12)
Info.create!(user_id:1, nationality:'brazilian', age:12, sex:'not defined')
Info.create!(user_id:2, nationality:'australian', age:60, sex:'woman')
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
climas = ['frio', 'quente', 'mediterraneo', 'polar']

climas.each{ |clima| Clima.create(name:clima)}

cont1=0
cont2=0
paises = ['china','brasil', 'africa do sul', 'Coreia']
paises.each{|pais| Country.create(name:pais, clima:1, language:1)}

linguas= ['mandarim', 'portugues', 'ingles', 'coreano']
linguas.each{ |l| Language.create!(name:l)}

User.create!(name:'Marcos', email:'marcos@marcos', password:12, password_confirmation:12)
User.create!(name:'Carla', email:'carla@carla', password:12, password_confirmation:12)
Info.create!(user_id:1, nationality:'brazilian', age:12, sex:'not defined')
Info.create!(user_id:2, nationality:'australian', age:60, sex:'woman')
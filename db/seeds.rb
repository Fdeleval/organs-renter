# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create!({fullname: "Frederic D",address: "Rue du Labrador 26, 1348 Ottignies-Louvain-la-Neuve",email:'fred@fred.fred', password:'123456', drinker:true, smoker:true, donor:true})
user_2 = User.create!({fullname: "Pierre C",address: "place fernand cocq, Ixelles",email:'pierre@pierre.pierre', password:'123456', drinker:true, smoker:true, donor:true})
user_3 = User.create!({fullname: "Romain B",address: "quai bonaparte, Liège",email:'romain.borremans@gmail.com', password:'123456', drinker:true, smoker:true, donor:true})
user_4 = User.create!({fullname: "Joseph V",address: "rue joseph gos, braine l'alleud",email:'joseph@joseph.joseph', password:'123456', drinker:true, smoker:true, donor:true})
user_5 = User.create!({fullname: "Bob B",address: "Rue du Pavillon 3, 7033 Mons",email:'bob@bob.bob', password:'123456', drinker:true, smoker:true, donor:true})

Organ.create!({organ_type: "lungs", description: "Very good condition", user: user_1, available: true, price: 4})
Organ.create!({organ_type: "heart", description: "bad good condition", user: user_2, available: true, price: 4})
Organ.create!({organ_type: "brain", description: "good condition", user: user_3, available: true, price: 4})
Organ.create!({organ_type: "lungs", description: "Very bad condition", user: user_4, available: true, price: 4})
Organ.create!({organ_type: "lungs", description: "Very good condition", user: user_5, available: true, price: 4})
Organ.create!({organ_type: "brain", description: "good condition", user: user_1, available: false, price: 4})

Booking.create!({ organ_id: 4, user_id: 1, date_start: DateTime.new(2020, 11, 10, 22, 35, 0), date_end: DateTime.new(2020, 11, 18, 22, 35, 0)})
Booking.create!({ organ_id: 1, user_id: 2, date_start: DateTime.new(2020, 11, 25, 22, 35, 0), date_end: DateTime.new(2020, 11, 30, 22, 35, 0)})
Booking.create!({ organ_id: 2, user_id: 3, date_start: DateTime.new(2020, 11, 25, 22, 35, 0), date_end: DateTime.new(2020, 11, 30, 22, 35, 0)})
Booking.create!({ organ_id: 3, user_id: 4, date_start: DateTime.new(2020, 11, 25, 22, 35, 0), date_end: DateTime.new(2020, 11, 30, 22, 35, 0)})
Booking.create!({ organ_id: 4, user_id: 2, date_start: DateTime.new(2020, 11, 25, 22, 35, 0), date_end: DateTime.new(2020, 11, 30, 22, 35, 0)})
Booking.create!({ organ_id: 1, user_id: 3, date_start: DateTime.new(2020, 11, 25, 22, 35, 0), date_end: DateTime.new(2020, 11, 30, 22, 35, 0)})

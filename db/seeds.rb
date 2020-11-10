# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!({email:'fred@fred.fred', password:'123456', drinker:true, smoker:true, donor:true})
User.create!({email:'pierre@pierre.pierre', password:'123456', drinker:true, smoker:true, donor:true})
User.create!({email:'romain@romain.romain', password:'123456', drinker:true, smoker:true, donor:true})
User.create!({email:'joseph@joseph.joseph', password:'123456', drinker:true, smoker:true, donor:true})
User.create!({email:'bob@bob.bob', password:'123456', drinker:true, smoker:true, donor:true})

Organ.create!({organ_type: "lungs", description: "Very good condition", user_id: 1, available: true, price: 4})
Organ.create!({organ_type: "heart", description: "bad good condition", user_id: 1, available: true, price: 4})
Organ.create!({organ_type: "brain", description: "good condition", user_id: 2, available: true, price: 4})
Organ.create!({organ_type: "lungs", description: "Very bad condition", user_id: 3, available: true, price: 4})
Organ.create!({organ_type: "lungs", description: "Very good condition", user_id: 4, available: true, price: 4})
Organ.create!({organ_type: "brain", description: "good condition", user_id: 4, available: false, price: 4})


Booking.create!({ organ_id: 4, user_id: 1, date_start: DateTime.new(2012, 8, 29, 22, 35, 0), date_end: DateTime.new(2012, 8, 30, 22, 35, 0)})
Booking.create!({ organ_id: 1, user_id: 2, date_start: DateTime.new(2012, 8, 29, 22, 35, 0), date_end: DateTime.new(2012, 8, 30, 22, 35, 0)})
Booking.create!({ organ_id: 2, user_id: 3, date_start: DateTime.new(2012, 8, 29, 22, 35, 0), date_end: DateTime.new(2012, 8, 30, 22, 35, 0)})
Booking.create!({ organ_id: 3, user_id: 4, date_start: DateTime.new(2012, 8, 29, 22, 35, 0), date_end: DateTime.new(2012, 8, 30, 22, 35, 0)})
Booking.create!({ organ_id: 4, user_id: 2, date_start: DateTime.new(2012, 8, 29, 22, 35, 0), date_end: DateTime.new(2012, 8, 30, 22, 35, 0)})
Booking.create!({ organ_id: 1, user_id: 3, date_start: DateTime.new(2012, 8, 29, 22, 35, 0), date_end: DateTime.new(2012, 8, 30, 22, 35, 0)})

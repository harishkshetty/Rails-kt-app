# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user=User.create([{ name: 'sachin', email: 'sachin@gmail.com',cityname:'Mumbai',surname:'Tendulkar'},
             { name: 'Sehwag', email: 'sehwag@gmail.com',cityname:'Delhi',surname:'Virendra'},
             { name: 'Kohli', email: 'kohli@gmail.com',cityname:'Delji',surname:'Virat'},
             { name: 'Rahul', email: 'rahul@gmail.com',cityname:'Bangalore',surname:'Dravid'}
                   ])

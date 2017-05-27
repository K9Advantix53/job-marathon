# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Posting.destroy_all


Posting.create(title: 'blah', description: 'blah', company: 'holyshit i do not care')
p1=Posting.create(title: 'blah1', description: 'blah1', company: 'holyshit i do not care')
p2=Posting.create(title: 'blah2', description: 'blah2', company: 'holyshit i do not care')

binding.pry

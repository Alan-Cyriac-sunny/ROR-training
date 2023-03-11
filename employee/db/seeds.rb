# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
employee = Employe.create([{name: 'emp1', email:'mail1@mail.com', phone: '9998887770'},
	{name: 'emp2', email:'mail2@mail.com', phone: '9988776655'},
	{name: 'emp3', email:'mail3@mail.com', phone: '9874563210'}])
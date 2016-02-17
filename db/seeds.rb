# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
program1 = Program.create(title: "Downton Abbey")
program2 = Program.create(title: "Sense and Sensibility")
program3 = Program.create(title: "The Paradise")
program4 = Program.create(title: "Stage Beauty")
program5 = Program.create(title: "Upstairs/Downstairs")

user1 = User.create(name: "Jen", email: "jen@jen.com", password: "beef")
user2 = User.create(name: "Chris", email: "chris@chris.com", password: "beef")
user3 = User.create(name: "Kristy", email: "kristy@kristy.com", password: "beef")
user4 = User.create(name: "John", email: "john@john.com", password: "beef")
user5 = User.create(name: "Nancy", email: "nancy@nancy.com", password: "beef")

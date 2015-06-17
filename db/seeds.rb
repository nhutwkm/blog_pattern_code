# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user_list = [
  ["chuong",    "chuong@gmail.com"],
  ["phuc",      "phugc@hotmail.com"],
  ["luong",     "luong@yahoo.com"],
  ["tien",      "tien@gmail.com"],
  ["son", 		"son@gmail.com"],
  ["chien",     "chien@hotmail.com"],
  ["duydy",     "duydy@yahoo.com"],
  ["messi",     "messi@yahoo.com"],
  ["ronaldo",     "ronaldo@yahoo.com"],
  ["congphuong",     "congphuong@yahoo.com"]
]

user_list.each do |user, email|
  User.create(name: user,
  				email: email, 
  				encrypted_password: "$2a$10$cHyiV6SD/vdO674gzqZCP.mbSMjcct.gU..aS2Vi7nA.DZ8bILjZy",
  				role: '')
end


# category_list = ["Ruby", "HTML", "PHP", "CSS", "JavaScript", "Java"]

# category_list.each do |category|
#   Category.create(name: category)
# end

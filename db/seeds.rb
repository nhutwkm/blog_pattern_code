# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# roles_list = [["admin", "admin"], ["user", "user"]]

# roles_list.each do |name, desc|
#   Role.create!(name: name, desc: desc)
# end

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

user_list.each do |user, email, role|
  User.create!(name: user,
  				email: email, 
  				password: "123456",
  				role: Role.first)
end


# category_list = ["Ruby", "HTML", "PHP", "CSS", "JavaScript", "Java"]

# category_list.each do |category|
#   Category.create(name: category)
# end

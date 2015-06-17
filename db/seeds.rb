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
  ["chuong",    "chuong@gmail.com","chuong12","user"],
  ["phuc",  "pdkproitf@gmail.com",  "pdkproitf","admin"],
  ["luong",     "luong@yahoo.com","luong123","user"],
  ["tien",      "tien@gmail.com","tien1234","user"],
  ["son", 		"son@gmail.com","son12345","user"],
  ["chien",     "chien@hotmail.com","chien123","admin"],
  ["duy",     "duydy@yahoo.com","duy12345","user"],
  ["messi",     "messi@yahoo.com","messi123","admin"],
  ["ronaldo",     "ronaldo@yahoo.com","ronaldo1","user"],
  ["congphuong",     "congphuong@yahoo.com","congphuong","user"]
]

user_list.each do |user, email,password,role_id|
  User.create!(name: user,
  				email: email, 
  				password: password,
  				role: Role.find_by_name(role_id))
end


# category_list = ["Ruby", "HTML", "PHP", "CSS", "JavaScript", "Java"]

# category_list.each do |category|
#   Category.create(name: category)
# end

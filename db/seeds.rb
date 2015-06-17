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

# user_list = [
#   ["chuong",    "chuong@gmail.com"],
#   ["phuc",      "phugc@hotmail.com"],
#   ["luong",     "luong@yahoo.com"],
#   ["tien",      "tien@gmail.com"],
#   ["son", 		"son@gmail.com"],
#   ["chien",     "chien@hotmail.com"],
#   ["duydy",     "duydy@yahoo.com"],
#   ["messi",     "messi@yahoo.com"],
#   ["ronaldo",     "ronaldo@yahoo.com"],
#   ["congphuong",     "congphuong@yahoo.com"]
# ]

# user_list.each do |user, email, role|
#   User.create!(name: user,
#   				email: email, 
#   				password: "12345678",
#   				role: Role.first)
# end
# category_list = ["Ruby", "HTML", "PHP", "CSS", "JavaScript", "Java"]

# category_list.each do |category|
#   Category.create(name: category)
# end
post_list = [
  ["Hello voi Ruby",    "Viet chunog trinh dau tien voi Ruby",  "puts 'Hello world'", "1"],
  ["Hello voi Java",    "Viet chunog trinh dau tien voi Java",  "System.out.println('Hello world')", "2"]
]
post_list.each do |title, desc, code, userid|
  Post.create(title: title,
              desc: desc,
              code: code,
              user_id: userid)
end
categories_posts_list = [
  ["1", "1"],
  ["2", "6"]
]
categories_posts_list.each do |postid, cateid|
  CategoriesPost.create(
            post_id: postid,
            category_id: cateid
    )
end
command_list = [
  ["4", "1",  "Khong the tin noi"],
  ["5", "1",  "That tuyet voi"],
  ["4", "2",  "Khong the tin noi"],
  ["5", "2",  "That tuyet voi"]
]
command_list.each do |userid, postid, comment|
  Command.create(
          user_id: userid,
          post_id: postid,
          comment: comment
    )
end
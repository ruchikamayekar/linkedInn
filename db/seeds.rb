# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |n|
  user = User.create(name:"Alan S#{n+1}", email:"alan#{n+1}@gmail.com", password:"password123", password_confirmation:"password123")
  article = Article.create(title: "Article about #{n+1} things", body:"some article content", user_id: user.id)
end

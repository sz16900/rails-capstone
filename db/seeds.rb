# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create Users
User.create(name:"seth", email:"seth@gmail.com", password:"123456789")
User.create(name:"john", email:"john@gmail.com", password:"123456789")
User.create(name:"mike", email:"mike@gmail.com", password:"123456789")
User.create(name:"juan", email:"juan@gmail.com", password:"123456789")
User.create(name:"pedro", email:"pedro@gmail.com", password:"123456789")
User.create(name:"santi", email:"santi@gmail.com", password:"123456789")
User.create(name:"primo", email:"primo@gmail.com", password:"123456789")
User.create(name:"charles", email:"charles@gmail.com", password:"123456789")
User.create(name:"maya", email:"maya@gmail.com", password:"123456789")
User.create(name:"stacy", email:"stacy@gmail.com", password:"123456789")

# Create Articles
Article.create(title:"Longboarding is fun", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"longboarder", author_id:1)
Article.create(title:"Freediving is fun", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"freediver", author_id:2)
Article.create(title:"Kiteboarding is fun", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"kiteboarder", author_id:3)
Article.create(title:"Surfing is fun", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"surfer", author_id:4)
Article.create(title:"Scuba Diving is fun", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"scuba", author_id:5)
Article.create(title:"Longboarding is the new zen", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"longboarder2", author_id:1)
# newly create longboard arts
Article.create(title:"Wow, awesome longboarding!", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"longboarder3", author_id:1)
Article.create(title:"Radical stories", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"longboarder4", author_id:2)
Article.create(title:"OMG longboarding is so cool", text:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", image:"longboarder5", author_id:3)

# Create Categories
Category.create(name:"longboarding", priority:1)
Category.create(name:"surfing", priority:2)
Category.create(name:"freediving", priority:3)
Category.create(name:"scubadiving", priority:4)
Category.create(name:"kiteboarding", priority:5)

# Create Tags
Tag.create(article_id:1, category_id:1)
Tag.create(article_id:2, category_id:3)
Tag.create(article_id:3, category_id:5)
Tag.create(article_id:4, category_id:2)
Tag.create(article_id:5, category_id:4)
Tag.create(article_id:6, category_id:1)
Tag.create(article_id:7, category_id:1)
Tag.create(article_id:8, category_id:1)
Tag.create(article_id:9, category_id:1)

# Create Votes:

# Article #6 is the most voted
Vote.create(user_id:1, article_id:6)
Vote.create(user_id:2, article_id:6)
Vote.create(user_id:3, article_id:6)
Vote.create(user_id:4, article_id:6)
Vote.create(user_id:5, article_id:6)
Vote.create(user_id:6, article_id:6)
Vote.create(user_id:7, article_id:6)
Vote.create(user_id:8, article_id:6)
Vote.create(user_id:9, article_id:6)

Vote.create(user_id:1, article_id:1)
Vote.create(user_id:2, article_id:1)
Vote.create(user_id:3, article_id:1)
Vote.create(user_id:4, article_id:1)
Vote.create(user_id:5, article_id:1)

Vote.create(user_id:1, article_id:2)
Vote.create(user_id:2, article_id:2)
Vote.create(user_id:3, article_id:2)
Vote.create(user_id:4, article_id:2)



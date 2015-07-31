# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Comment.destroy_all
Post.destroy_all


post1 = Post.create(title: "First Post!", author: "Sam", content: "This is my first post! This is my first post! This is my first post! This is my first post! This is my first post!")
post2 = Post.create(title: "Second Post!", author: "Sam", content: "This is my second post! This is my second post! This is my second post! This is my second post! ")
post3 = Post.create(title: "Third Post!", author: "Sam", content: "This is my third post! This is my third post! This is my third post! This is my third post! ")


comment1 = Comment.create(author: "Sam", content: "Awesome blog!", post_id: post1.id)

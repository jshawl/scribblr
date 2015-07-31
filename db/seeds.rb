# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all


post1 = Post.create(title: "Post 1", author: "Sam", content: "Post1 Post1 Post1 Post1 ")
post2 = Post.create(title: "Post 2", author: "Sam", content: "Post2 Post2 Post2 Post2 ")

Comment.create(author: "Sam", content:"First!!!!", post_id:post1.id)

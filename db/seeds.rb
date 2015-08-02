# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.destroy_all
Comment.destroy_all

post1 = Post.create(title: "Post 1", author: "Sam", content: "Post1 Post1 Post1 Post1 ")
post2 = Post.create(title: "Post 2", author: "Sam", content: "Post2 Post2 Post2 Post2 ")

Comment.create(author: "Sam", content:"First!!!!", post_id:post1.id)
                                                 # or post: post1
# Excellent seeds!
# You could also seed posts and comments for a couple of users to test out the feature
# you described in your pull request.

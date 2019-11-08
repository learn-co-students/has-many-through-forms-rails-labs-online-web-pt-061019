# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  funny = Category.create(name: "funny")
  serious = Category.create(name: "serious")

  hello = Post.create(title: "Hello", content: "Hello! This is my new page!")
  goodbye = Post.create(title: "Goodbye", content: "Goodbye! I'm deleting this page!")

  emily = User.create(username: "emily4life", email: "emily4life@gmail.com")
  john = User.create(username: "john", email: "john@gmail.com")

  no_way = Comment.create(content: "No way!", user_id: emily.id, post_id: hello.id)
  dont_do_it = Comment.create(content: "Don't do it!", user_id: john.id, post_id: goodbye.id)

  post_categories_1 = PostCategory.create(post_id: hello.id, category_id: funny.id)
  post_categories_2 = PostCategory.create(post_id: hello.id, category_id: serious.id)
  post_categories_3 = PostCategory.create(post_id: goodbye.id, category_id: serious.id)
  
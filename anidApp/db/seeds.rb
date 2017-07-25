# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.delete_all
Post.delete_all
	

p = Post.create(title: "Lorem Ipsum 1")
Comment.create(post: p, content: "Comentario 1 del post 1")
Comment.create(post: p, content: "Comentario 2 del post 1")
p = Post.create(title: "Lorem Ipsum 2")
Comment.create(post: p, content: "Comentario 1 del post 2")
Comment.create(post: p, content: "Comentario 2 del post 2")
Comment.create(post: p, content: "Comentario 3 del post 2")
p = Post.create(title: "Lorem Ipsum 3")
Comment.create(post: p, content: "Comentario 1 del post 3")
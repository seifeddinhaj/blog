# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

category_1 = Category.create(name: 'category 1')
category_2 = Category.create(name: 'category 2')


blog_1 = Article.create(title:'Article 1', body: '<p>Hello world 1</p>', category: category_1)
blog_2 = Article.create(title:'Article 2', body: '<p>Hello world 2</p>', category: category_2)

user = User.create(email: 'user@user.com', full_name: 'User normal', password: 'password')
admin = User.create(email: 'admin@admin.com', full_name: 'Admin', password: 'password', role: 1)



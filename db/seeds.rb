# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: '12345@gmail.com', password: '1234', answered: 0)
User.create(email: 'abcdefg@gmail.com', password: '1234', answered: 100)
User.create(email: 'terrible@gmail.com', password: '1234', answered: 20)
User.create(email: 'cdemarti@gmail.com', password: '1234', answered: 100000)


v = User.create(email: 'codythomasdemartin@gmail.com', password: '1234', answered: 3)

v.avatar.attach(io: File.open('app/assests/issey_and_marg.jpg'), filename: 'issey_and_marg.jpg', content_type: 'image/jpg')
v.save


Post.create(user_id: 1, score: 0, title: 'Where do I find these pants?', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum')
Post.create(user_id: 1, score: 100, title: 'ID on shoes?', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum')
Post.create(user_id: 2, score: 1000, title: "W2C Kanye's pants?", body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum')
Post.create(user_id: 3, score: 23, title: 'Is this Yohji or CDG?', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum')
Post.create(user_id: 4, score: 2344, title: 'ID ON PLEATS PLS', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum')
Post.create(user_id: 5, score: 1000000, title: 'Where do I buy this sick shirt?', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum')

Favorite.create(post_id: 2, user_id: 1)
Favorite.create(post_id: 2, user_id: 2)
Favorite.create(post_id: 1, user_id: 1)
Favorite.create(post_id: 1, user_id: 2)
Favorite.create(post_id: 4, user_id: 4)
Favorite.create(post_id: 4, user_id: 1)
Favorite.create(post_id: 3, user_id: 3)
Favorite.create(post_id: 5, user_id: 5)


Comment.create(score: 213, user_id: 2, post_id: 1,  body: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum." )
Comment.create(score: 43, user_id: 2, post_id: 4,  body: "Lorem ipsum Lorem ipsum Lorem ipsum." )
Comment.create(score: 12, user_id: 3, post_id: 3,  body: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum. Lorem ipsum." )
Comment.create(score: 3, user_id: 3, post_id: 5,  body: "Lorem ipsum." )
Comment.create(score: 12, user_id: 4, post_id: 1,  body: "Lorem ipsumLorem ipsum Lorem ipsum Lorem ipsum." )
Comment.create(score: -909, user_id: 4, post_id: 3,  body: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum ." )
Comment.create(score: -1, user_id: 5, post_id: 4,  body: "Lorem ipsum Lorem ipsum." )
Comment.create(score: 0, user_id: 5, post_id: 1,  body: "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum. Lorem ipsum Lorem ipsum Lorem ipsum . Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum." )
Comment.create(score: 213, user_id: 5, post_id: 33,  body: "Lorem")

# t.integer :score, :default => 0
# t.integer :user_id
# t.integer :post_id
# t.string :title
# t.text :body

# t.integer "post_id"
# t.integer "user_id"

# t.integer :user_id
# t.integer :score, :default => 0
# t.string :title
# t.text :body
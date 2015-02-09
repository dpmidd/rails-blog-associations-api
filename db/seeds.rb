User.delete_all
Post.delete_all
Comment.delete_all


2.times do
 user = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
 user2 = User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

 post = Post.create(title: Faker::Lorem.word, body: Faker::Lorem.paragraph, user_id: user.id)
 post2 = Post.create(title: Faker::Lorem.word, body: Faker::Lorem.paragraph, user_id: user.id)
 post3 = Post.create(title: Faker::Lorem.word, body: Faker::Lorem.paragraph, user_id: user2.id)

 comment = Comment.create(body: Faker::Lorem.paragraph, user_id: user.id, post_id: post3.id)
 comment2 = Comment.create(body: Faker::Lorem.paragraph, user_id: user2.id, post_id: post3.id)
 comment3 = Comment.create(body: Faker::Lorem.paragraph, user_id: user2.id, post_id: post.id)
 comment4 = Comment.create(body: Faker::Lorem.paragraph, user_id: user.id, post_id: post2.id)
end

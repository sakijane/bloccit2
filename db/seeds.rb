require "random_data"

# Create Posts
50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

# Create Comments
100.times do
  Comment.create!(
  post: posts.sample,
  body: RandomData.random_paragraph
  )
end

# Create Advertisements
50.times do
  Advertisement.create!(
    title: RandomData.random_sentence,
    copy: RandomData.random_paragraph,
    price: RandomData.random_integer
  )
end
advertisements = Advertisement.all

puts "Seeds finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
puts "#{Advertisement.count} advertisements created"
puts "First advertisement price: $#{Advertisement.first.price}"

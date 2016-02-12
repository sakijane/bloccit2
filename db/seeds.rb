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

# Create a unique Post
posts.find_or_create_by!(
  title: "This is a unique title",
  body: "This is unique content"
)
end



puts "Seeds finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

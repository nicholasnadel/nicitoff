require 'faker'

# Create Posts
50.times do
  List.create!(
    title:  Faker::Lorem.sentence,
  )
end
lists = List.all

# Create Comments
100.times do
  Task.create!(
    list: lists.sample,
    description: Faker::Lorem.paragraph
  )
end

puts "Seed finished"
puts "#{List.count} lists created"
puts "#{Task.count} tasks created"
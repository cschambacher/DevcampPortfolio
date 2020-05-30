# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non quam lacus suspendisse faucibus interdum posuere lorem. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar pellentesque. Mauris a diam maecenas sed enim ut sem viverra. Vulputate mi sit amet mauris commodo quis imperdiet massa. In hac habitasse platea dictumst quisque sagittis purus sit. ",
        topic_id: Topic.last.id
    )
end

puts "10 Blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        percent_utilized: 15
    )
end

puts "5 skills created"

8.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}" ,
        subtitle: "Ruby on Rails",
        body: "Massa massa ultricies mi quis hendrerit. Enim lobortis scelerisque fermentum dui. Dignissim sodales ut eu sem integer vitae. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur. ",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image:"https://via.placeholder.com/350x200"
    )
end
1.times do |portfolio_item|
    Portfolio.create!(
        title: "Portfolio title: #{portfolio_item}" ,
        subtitle: "Angular",
        body: "Massa massa ultricies mi quis hendrerit. Enim lobortis scelerisque fermentum dui. Dignissim sodales ut eu sem integer vitae. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur. ",
        main_image: "https://via.placeholder.com/600x400",
        thumb_image:"https://via.placeholder.com/350x200"
    )
end
puts "9 portfolio items created"

3.times do |technology|
    Portfolio.last.technologies.create!(
        name: "Technology #{technology}"
    )
end

puts "3 technologies created"
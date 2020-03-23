15.times do |n|
    User.create!(name: Faker::Name.unique.name)
end

category_list = %w[American Caribbean Chinese French Italian Mexican]

category_list.each do |n|
    prop = rand(1..6)
    Category.create!(name: n, priority: prop)
end

User.all.each do |user|
    Article.create(author_id: user.id, title: Faker::Lorem.sentence(word_count: 8), text: Faker::Lorem.paragraph(sentence_count: 4, supplemental: true), category_id: rand(1..6))
end

Article.all.each do |p|
    p.image.attach(io: File.open('C:\Users\Fleurant R. Fernando\Pictures\deeeee\1.jpg'), filename: '1.jpg')
end





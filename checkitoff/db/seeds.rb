require 'faker'

# Create Users
5.times do
  user = User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
end

user = User.first
 user.skip_reconfirmation!
 user.update_attributes!(
   email: 'rdj7890@yahoo.com',
   password: 'helloworld'
 )

users = User.all
puts "#{User.count} users created"

10.times do
  CheckList.create!(
  title: Faker::Lorem.sentence,
  description: Faker::Lorem.sentence,
  user: users.sample
  )
end

check_lists = CheckList.all
puts "#{CheckList.count} check lists created"


# Create items
25.times do
  c = check_lists.sample
  Item.create!(
    content: Faker::Lorem.sentence,
    user: c.user,
    check_list: c
  )
end
items = Item.all
puts "#{Item.count} items created"

puts "Seed finished"

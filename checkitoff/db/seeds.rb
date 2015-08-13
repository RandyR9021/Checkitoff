require 'faker'

 50.times do
   Check_list.create!(
     title:  Faker::Lorem.sentence,
     body:   Faker::Lorem.paragraph
   )
 end
 check_lists = Check_list.all

 100.times do
   Item.create!(
     body: Faker::Lorem.paragraph
   )
 end

 puts "Seed finished"
 puts "#{Check_list.count} check lists created"
 puts "#{Item.count} items created"

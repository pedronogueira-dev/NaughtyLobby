# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Cleaning up database..."
Vote.destroy_all
Meeting.destroy_all
Review.destroy_all
Politician.destroy_all
User.destroy_all
#PHOTO_URLS = [
 # "https://static01.nyt.com/images/2011/03/27/arts/FADO-2/FADO-2-popup.jpg",
 # "https://previews.123rf.com/images/membio/membio1404/membio140400125/30469457-view-of-a-young-beautiful-singer-and-performer-woman-of-traditional-portuguese-fado-music-.jpg",
 # "https://i.pinimg.com/originals/82/82/ba/8282ba301f4f1330defc49b5d9741034.jpg"
 # ]
#10.times do
  #first_name, last_name = Faker::FunnyName.two_word_name.split
  #Politician.create!(
  #first_name: first_name,
  #last_name: last_name,
  #)
#end

Politician.create!([{
  name: "Teresa May",
  party: "Tory",
  current_salary: 5000,
  vote_price: 1000,
  daily_price: 1,
  tag_line: "You won't do better without me",
  general_description: "Leading the U.K. to a better Europe",
  location: "United Kingdom",
  photo_url: "http://i2.cdn.cnn.com/cnnnext/dam/assets/170124125305-theresa-may-super-tease.jpg"
},
{
  name: "Angela Merkel",
  party: "Christian Democrats",
  current_salary: 5100,
  vote_price: 1000,
  daily_price: 1000,
  tag_line: "Making Germany great again",
  general_description: "Leading Germany to a better Europe",
  location: "Germany",
  photo_url: "http://theduran.com/wp-content/uploads/2017/02/Angela-Merkel.jpg"
},
{
  name: "Cristina Fernandez",
  party: "Justicialist Party",
  current_salary: 100,
  vote_price: 1,
  daily_price: 1000,
  tag_line: "I didn't do it",
  general_description: "Leading Argentines to migrate to Europe",
  location: "Argentina",
  photo_url: "https://upload.wikimedia.org/wikipedia/commons/2/22/Cristinakirchnermensaje2010.jpg"
}])

puts "Created #{Politician.count} Politicians"

User.create!([{
  name: "New User",
  email: "newuser@naughtylobby.com",
  password: "123456",
  photo_url: "https://consequenceofsound.files.wordpress.com/2018/05/dr-evil.png"

},
{
  name: "Old User",
  email: "olduser@naughtylobby.com",
  password: "000000"
},
{
  name: "Naughty User",
  email: "naughtyuser@naughtylobby.com",
  password: "naughty"
}])

puts "Created #{User.count} New Users"

Vote.create!([{
  position: false,
  subject: "gun control",
  user: User.all.sample,
  politician: Politician.all.sample
},
{
  position: true,
  subject: "birth control",
  user: User.all.sample,
  politician: Politician.all.sample
},
{
  position: false,
  subject: "immigrant control",
  user: User.all.sample,
  politician: Politician.all.sample

}])

puts "Created #{Vote.count} Votes"

Meeting.create!([{
  start_date: 12.days.ago,
  end_date: 5.days.ago,
  user: User.all.sample,
  politician: Politician.all.sample
},
{
  start_date: 4.days.ago,
  end_date: 4.days.since,
  user: User.all.sample,
  politician: Politician.all.sample
},
{
  start_date: 31.days.ago,
  end_date: 31.days.since,
  user: User.all.sample,
  politician: Politician.all.sample
}])

puts "Created #{Meeting.count} Meetings"

Review.create!([{
  rating: 1,
  description: "Better financially for me than the other one",
  title: "Better for me than the other one",
  user: User.all.sample,
  politician: Politician.all.sample
},
{
  rating: 2,
  description: "Looks better than the other one",
  title: "Better looking than the other one",
  user: User.all.sample,
  politician: Politician.all.sample
},
{
  rating: 3,
  description: "Seems better then the other one",
  title: "Better than the other one",
  user: User.all.sample,
  politician: Politician.all.sample
}])

puts "Created #{Review.count} Reviews"


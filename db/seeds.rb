puts "seeing data 🌱"


# User.new(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u1 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u2 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u3 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u4 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u5 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u6 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u7 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u8 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
u9 = User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")
User.create(username: Faker::Name.unique.name, email: Faker::Internet.email, password: "password", password_confirmation: "password")




Location.create(location_name: Faker::Restaurant.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip )
Location.create(location_name: Faker::Restaurant.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip )
Location.create(location_name: Faker::Restaurant.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip )
Location.create(location_name: Faker::Restaurant.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip )
Location.create(location_name: Faker::Restaurant.name, address: Faker::Address.street_address, city: Faker::Address.city, state: Faker::Address.state, zipcode: Faker::Address.zip )

Event.create(event_name: Faker::Job.field + " Conference", category: Faker::Hobby.activity, description: Faker::Lorem.paragraph(sentence_count: 4), location_id: Location.all.sample.id)
Event.create(event_name: Faker::Job.field + " Conference", category: Faker::Hobby.activity, description: Faker::Lorem.paragraph(sentence_count: 4), location_id: Location.all.sample.id)
Event.create(event_name: Faker::Job.field + " Conference", category: Faker::Hobby.activity, description: Faker::Lorem.paragraph(sentence_count: 4), location_id: Location.all.sample.id)




Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )

Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )
Attendance.create(event_id: Event.all.sample.id, user_id: User.all.sample.id, host: false )


puts "seeing finished 🌱"
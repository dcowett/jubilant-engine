# Create a main sample user.
User.create!(name:  "Test User",
             email: "test@testuser.com",
             password:              "foobar55",
             password_confirmation: "foobar55",
             admin: true)


# Generate a bunch of additional users.
99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create!(name:  name,
              email: email,
              password:              password,
              password_confirmation: password)
  end

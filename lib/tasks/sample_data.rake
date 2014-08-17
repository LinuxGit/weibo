namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    User.create!(name: "LinuxGit",
                 email: "gofaceme@gmail.com",
                 password: "foobar",
                 password_confirmation: "foobar",
                 admin: true)
    99.times do |n|
      name = Faker::Name.name
      email = "gofaceme-#{n + 1}@gmail.com"
      password = "foobar"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end

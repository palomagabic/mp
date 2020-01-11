# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

if Country.count == 0
  path = File.join(File.dirname(__FILE__), "./seeds/countries.json")
  records = JSON.parse(File.read(path))
  records.each do |record|
    Country.create!(record)
  end
  puts "countries are seeded"
end

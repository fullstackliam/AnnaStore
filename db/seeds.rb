# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

$i = Province.count
while $i > 0 do
  Province.first.delete
$i -= 1
end

Province.create!([{
  name: "Alberta"
},
{
  name: "British Columbia"
},
{
  name: "Manitoba"
},
{
  name: "New Brunswick"
},
{
  name: "Newfoundland and Labrador"
},
{
  name: "Nova Scotia"
},
{
  name: "Ontario"
},
{
  name: "Prince Edward Island"
},
{
  name: "Quebec"
},
{
  name: "Saskatchewan"
},
{
  name: "Northwest Territories"
},
{
  name: "Nunavut"
},
{
  name: "Yukon"
}])
p "Created #{Province.count} Provinces"


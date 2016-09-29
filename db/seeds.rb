# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
jobs_list = [
  ["Ruby Developer", "Looking for junior developer that knows Ruby on Rails to build web applications", "bob@gmail.com", "ABC Corp", "Miami" ],
  ["Node.js Developer", "Looking for junior developer that knows Node.js to build web applications", "jim@testcorp.com", "Test Corp", "Fort Lauderdale" ],
  ["PHP Developer", "Looking for junior developer that knows PHP to build web applications", "tim@legacyinc.com", "Legacy Inc", "Miami" ],
  ["Python Developer", "Looking for junior developer that knows Python to build web applications", "HR@scicorp.com", "Science Corp", "Miami" ]
]


jobs_list.each do |title, description, contact, company, location|
  Job.create(title: title, description: description, contact: contact, company: company, location: location)
end

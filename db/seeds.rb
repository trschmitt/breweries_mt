# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

file = File.read('db/data/mtbrewerydata.json')
data = JSON.parse(file)

data.each_index do |index|
  l = data[index]
  brewery = Brewery.create({
    name: l['brewery']['name'],
    email: "montana#{index}@mt.com",
    password: "password",
    description: l['brewery']['description'],
    website: l['brewery']['website'],
    established: l['brewery']['established'],
    address_street: l['streetAddress'],
    address_city: l['locality'],
    address_state: l['region'],
    operating_hours: l['hoursOfOperation'],
    phone: l['phone'],
    location_type: l['locationTypeDisplay']
  })
end

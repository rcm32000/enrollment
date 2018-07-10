# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all

STUDENTS = %w[Rob, Emmie, Dione, Eliot, Collin, Ian, Chris, John, Matt, Connor]
DESCRIPTIONS = %w[Summer Home, Permanent Address, Skiing Vacation, Recovery Retreat]
STREETS = %w[Main, Market, 17th, Cynthia, Homestead, El Camino, Parker, Mississippi, California]
CITIES = %w[Los Altos, Sunnyvale, Cupertino, Boise, Fresno, Thornton, Aurora, Denver, San Jose, New York]
STATES = %w[CA, ID, CO, NY, FL, WA, ME, AL, HI]
ZIPS = %w[80012, 94024, 73849, 23874, 01928]

STUDENTS.each do |name|
  student = Student.create!(name: name)
  puts "Enrolled #{student.name}"
  student.address.create!(description: DESCRIPTION.sample,
                          street: STREETS.sample,
                          city: CITIES.sample,
                          state: STATES.sample,
                          zip: ZIP.sample)
end

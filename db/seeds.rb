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
STREETS = %w[Main, ]
CITIES = %w[]
STATES = %w[]
ZIPS = %w[]

STUDENTS.each do |name|
  student = Student.create!(name: name)
  puts "Enrolled #{student.name}"
  10.times do |num|
    student.address.create!(title: JOBS.sample, description: "What a great position!", level_of_interest: num + rand(100), city: CITIES.sample, category: CATEGORIES.sample)
    puts "  Created #{company.jobs[num].title}"
  end
end

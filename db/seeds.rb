# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

puts "Creating seeds..."

if Rails.env.development?
  Task.destroy_all
end

seed_count = 0

10.times do

  task = Task.create!(
    title: Faker::Educator.course_name,
    deadline: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now + 7, format: :short),
    done: [false, true][rand(2)]
  )

  seed_count += 1
       
end

puts "#{seed_count} tasks created!"

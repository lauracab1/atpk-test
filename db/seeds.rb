# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all
puts "Destroying all users"
Event.destroy_all
puts "Destroying all events"

# Create users
puts "Creating users..."
User.create!(first_name: "Laura", last_name: "Cabos", email: "tata@gmail.com", password: "123456")
User.create!(first_name: "John", last_name: "Doe", email: "totot@gmail.com", password: "123456")
puts "Users created"

# Create events
puts "Creating events..."
Event.create!(name: "LCDO 8", description: "encore une super fiesta", start_date: "2025-06-13", end_date: "2025-06-20", location: "Cevennes", capacity: 100, secret_code: "lcdo25")
Event.create!(name: "LCDO 9", description: "encore une super fiesta", start_date: "2026-06-13", end_date: "2026-06-20", location: "Cevennes", capacity: 100, secret_code: "lcdo26")
puts "Events created"

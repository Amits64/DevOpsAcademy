# db/seeds.rb

# Create default users
User.create!(
  [
    { name: 'John Doe', email: 'john.doe@example.com' },
    { name: 'Jane Smith', email: 'jane.smith@example.com' }
  ]
)

puts "Seed data created!"

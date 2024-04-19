# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

r1 = Role.create({name:'receptionist'});
r2 = Role.create({name:'doctor'});

u1 = User.create({ name: 'Sally', email: 'sally@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r1.id })
u2 = User.create({ name: 'Sue', email: 'sue@example.com', password: 'aaaaaaaa', password_confirmation: 'aaaaaaaa', role_id: r2.id })

patients = [
  { name: 'John Doe', gender: 'Male', age: 35, disease: 'Flu' },
  { name: 'Jane Smith', gender: 'Female', age: 28, disease: 'Common cold' },
  { name: 'Mike Johnson', gender: 'Male', age: 42, disease: 'Allergy' },
  { name: 'Emily Brown', gender: 'Female', age: 50, disease: 'Diabetes' }
]

# Iterate through the patients array and create records in the database
patients.each do |patient|
  Patient.create(patient)

end

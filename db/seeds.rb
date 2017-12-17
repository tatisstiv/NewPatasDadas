# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

now = DateTime.new(2017, 12, 14, 11, 25, 00)

volunteer = Volunteer.create(
  name: "Admin",
  function: :Gestor,
  motivation_text: "Teste.",
  email: "admin@example.com",
  password: "blabla",
  password_confirmation: "blabla",
  approved: true
)

volunteer2 = Volunteer.create(
  name: "Admin2",
  function: :Gestor,
  motivation_text: "Teste.",
  email: "admin2@example.com",
  password: "blabla",
  password_confirmation: "blabla",
  approved: true
)

animals = Animal.create([
  {
    name: "0 0",
    color: "preto",
    size: "medio"
  }, {
    name: "2 0",
    color: "preto",
    size: "medio"
  }, {
    name: "2 1",
    color: "preto",
    size: "medio"
  }, {
    name: "0 2",
    color: "preto",
    size: "medio"
  }, {
    name: "1 3",
    color: "preto",
    size: "medio"
  }, 
].reverse)

ExperimentalScheduling.create([
  {
    volunteer: volunteer,
    animal: animals[3],
    date_time: now - 1
  }, {
    volunteer: volunteer,
    animal: animals[3],
    date_time: now - 2
  }, {
    volunteer: volunteer,
    animal: animals[2],
    date_time: now - 1
  }, {
    volunteer: volunteer,
    animal: animals[2],
    date_time: now - 2
  }, {
    volunteer: volunteer,
    animal: animals[2],
    date_time: now + 1
  }, {
    volunteer: volunteer,
    animal: animals[1],
    date_time: now + 1
  }, {
    volunteer: volunteer,
    animal: animals[1],
    date_time: now + 2
  }, {
    volunteer: volunteer,
    animal: animals[0],
    date_time: now - 1
  }, {
    volunteer: volunteer,
    animal: animals[0],
    date_time: now + 1
  }, {
    volunteer: volunteer,
    animal: animals[0],
    date_time: now + 2
  }, {
    volunteer: volunteer,
    animal: animals[0],
    date_time: now + 3
  }, 
])

Walking.create([
  {
    volunteer: volunteer2,
    animal: animals[3],
    date: now - 1
  }, {
    volunteer: volunteer2,
    animal: animals[3],
    date: now - 2
  }, {
    volunteer: volunteer2,
    animal: animals[2],
    date: now - 1
  }, {
    volunteer: volunteer2,
    animal: animals[2],
    date: now - 2
  }, {
    volunteer: volunteer,
    animal: animals[2],
    date: now + 1
  }, {
    volunteer: volunteer,
    animal: animals[1],
    date: now + 1
  }, {
    volunteer: volunteer,
    animal: animals[1],
    date: now + 2
  }, {
    volunteer: volunteer2,
    animal: animals[0],
    date: now - 1
  }, {
    volunteer: volunteer,
    animal: animals[0],
    date: now + 1
  }, {
    volunteer: volunteer,
    animal: animals[0],
    date: now + 2
  }, {
    volunteer: volunteer,
    animal: animals[0],
    date: now + 3
  }, 
])





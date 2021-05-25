puts "Clearing old data..."
Cohort.destroy_all
Student.destroy_all

# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-1",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-2",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-3",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-4",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-5",
  current_mod: rand(1..5)
)

puts "Seeding students..."
s1 = Student.create(
  name: "Sean",
  age: rand(10..100),
  email: "2@2.com",
  cohort_id: Cohort.ids.sample
)

s2 = Student.create(
  name: "Alan",
  age: rand(10..100),
  email: "3@3.com",
  cohort_id: Cohort.ids.sample
)

s3 = Student.create(
  name: "Ben",
  age: rand(10..100),
  email: "4@4.com",
  cohort_id: Cohort.ids.sample
)

s4 = Student.create(
  name: "Dennis",
  age: rand(10..100),
  email: "5@5.com",
  cohort_id: Cohort.ids.sample
)

s5 = Student.create(
  name: "Jake",
  age: rand(10..100),
  email: "6@6.com",
  cohort_id: Cohort.ids.sample
)
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data

puts "Done!"
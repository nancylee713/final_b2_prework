# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

CourseStudent.destroy_all
Course.destroy_all
Student.destroy_all

pete = Student.create!(name: "Pete")
math = Course.create!(name: "Calculus I")
math_pete = CourseStudent.create!(course_id: math.id, student_id: pete.id, grade: 90)

english = Course.create!(name: "Compsition 101")
english_pete = CourseStudent.create!(course_id: english.id, student_id: pete.id, grade: 88)

world_history = Course.create!(name: "World History")
world_history_pete = CourseStudent.create!(course_id: world_history.id, student_id: pete.id, grade: 93)

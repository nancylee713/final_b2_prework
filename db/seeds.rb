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
sarah = Student.create!(name: "Sarah")
john = Student.create!(name: "John")

math = Course.create!(name: "Calculus I")
english = Course.create!(name: "Compsition 101")
world_history = Course.create!(name: "World History")

math_pete = CourseStudent.create!(course_id: math.id, student_id: pete.id, grade: 90)
english_pete = CourseStudent.create!(course_id: english.id, student_id: pete.id, grade: 88)
world_history_pete = CourseStudent.create!(course_id: world_history.id, student_id: pete.id, grade: 93)

math_sarah = CourseStudent.create!(course_id: math.id, student_id: sarah.id, grade: 100)
english_sarah = CourseStudent.create!(course_id: english.id, student_id: sarah.id, grade: 80)
world_history_sarah = CourseStudent.create!(course_id: world_history.id, student_id: sarah.id, grade: 87)

math_john = CourseStudent.create!(course_id: math.id, student_id: john.id, grade: 91)
english_john = CourseStudent.create!(course_id: english.id, student_id: john.id, grade: 80)
world_history_john = CourseStudent.create!(course_id: world_history.id, student_id: john.id, grade: 99)

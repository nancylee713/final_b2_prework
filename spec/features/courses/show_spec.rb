require 'rails_helper'

RSpec.describe "Course Show Page", type: :feature do
  describe "As a user" do
    describe "When I visit a course show page" do
      it "I see the course info" do
        pete = Student.create!(name: "Pete")
        sarah = Student.create!(name: "Sarah")
        john = Student.create!(name: "John")
        jane = Student.create!(name: "Jane")

        math = Course.create!(name: "Calculus I")
        math_pete = CourseStudent.create!(course_id: math.id, student_id: pete.id, grade: 90)
        math_sarah = CourseStudent.create!(course_id: math.id, student_id: sarah.id, grade: 100)
        math_john = CourseStudent.create!(course_id: math.id, student_id: john.id, grade: 82)

        visit course_path(math)

        expect(page).to have_content(math.name)

        within '#record-1' do
          expect(page).to have_content(sarah.name)
          expect(page).to have_content(math_sarah.grade)
        end

        within '#record-2' do
          expect(page).to have_content(pete.name)
          expect(page).to have_content(math_pete.grade)

        end

        within '#record-3' do
          expect(page).to have_content(john.name)
          expect(page).to have_content(math_john.grade)
        end

        expect(page).to_not have_content(jane.name)
      end
    end
  end
end

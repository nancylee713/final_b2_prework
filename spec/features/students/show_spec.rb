require 'rails_helper'

RSpec.describe "Student Show Page", type: :feature do
  describe "As a user" do
    describe "When I visit a student show page" do
      it "I see the student's info" do
        pete = Student.create!(name: "Pete")
        math = Course.create!(name: "Calculus I")
        math_pete = CourseStudent.create!(course_id: math.id, student_id: pete.id, grade: 90)

        english = Course.create!(name: "Compsition 101")
        english_pete = CourseStudent.create!(course_id: english.id, student_id: pete.id, grade: 88)

        world_history = Course.create!(name: "World History")
        world_history_pete = CourseStudent.create!(course_id: world_history.id, student_id: pete.id, grade: 93)

        visit student_path(pete.id)

        expect(page).to have_content(pete.name)

        within "#record-#{math_pete.id}" do
          expect(page).to have_content(math.name)
          expect(page).to have_content(math_pete.grade)
        end

        within "#record-#{english_pete.id}" do
          expect(page).to have_content(english.name)
          expect(page).to have_content(english_pete.grade)
        end

        within "#record-#{world_history_pete.id}" do
          expect(page).to have_content(world_history.name)
          expect(page).to have_content(world_history_pete.grade)
        end
      end
    end
  end
end

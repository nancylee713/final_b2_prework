require 'rails_helper'

describe CourseStudent, type: :model do
  describe "validations" do
    it { should validate_presence_of :grade }
    it { should validate_numericality_of(:grade).only_integer }
    it { should validate_inclusion_of(:grade).in_range(0..100) }
  end

  describe "relationships" do
    it { should belong_to :course }
    it { should belong_to :student }
  end

  describe "class methods" do
    it "#sort_by_grade" do
      math = Course.create!(name: "Calculus I")
      pete = Student.create!(name: "Pete")
      sarah = Student.create!(name: "Sarah")
      john = Student.create!(name: "John")

      highest = CourseStudent.create!(course_id: math.id, student_id: pete.id, grade: 100)
      middle = CourseStudent.create!(course_id: math.id, student_id: sarah.id, grade: 80)
      lowest = CourseStudent.create!(course_id: math.id, student_id: john.id, grade: 70)

      result = [[pete.name, highest.grade], [sarah.name, middle.grade], [john.name, lowest.grade]]

      expect(CourseStudent.sort_by_grade).to eq(result)
    end
  end
end

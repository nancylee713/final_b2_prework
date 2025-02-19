class CourseStudent < ApplicationRecord
  validates_presence_of :grade
  validates_numericality_of :grade, only_integer: true
  validates_inclusion_of :grade, in: 0..100

  belongs_to :course
  belongs_to :student

  def self.sort_by_grade(course)
    CourseStudent.joins(:student)
    .where(course_id: course.id)
    .select(:name)
    .order(grade: :desc)
    .pluck(:name, :grade)
  end
end

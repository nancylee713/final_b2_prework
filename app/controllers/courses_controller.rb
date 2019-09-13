class CoursesController < ApplicationController
  def show
    @course = Course.find(params[:id])
    @course_students = CourseStudent.all
  end
end

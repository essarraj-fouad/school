class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "Student saved"
      redirect_to new_student_path
    end
  end

  private
  def student_params
    params.require(:student).permit(:name)
  end
end

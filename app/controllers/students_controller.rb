class StudentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path, notice: t("flash.students.create.notice")
    else
      render :new
    end
  end

  private
  def student_params
    params.require(:student).permit(:name, :classroom_id)
  end
end

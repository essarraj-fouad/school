class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
    @teacher.subjects.build
    @classrooms = Classroom.all
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:notice] = "Teacher saved"
      redirect_to root_path
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :classroom_id, subjects_attributes: [:id, :name])
  end
end

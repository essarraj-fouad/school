class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    @teacher.subjects.new(:name => params[:subjects][:name])
    if @teacher.save
      flash[:notice] = "Teacher saved"
      redirect_to new_teacher_path
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :classroom_id)
  end
end

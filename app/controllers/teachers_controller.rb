class TeachersController < ApplicationController
  def new
    @teacher = Teacher.new
    @teacher.subjects.build
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      flash[:notice] = t("flash.teachers.create.notice")
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :classroom_id, subjects_attributes: [:id, :name])
  end
end

class TeachersController < ApplicationController
  before_action :authenticate_user!

  def new
    @teacher = Teacher.new
    @teacher.subjects.build
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to root_path, notice: t("flash.teachers.create.notice")
    else
      render :new
    end
  end

  private
  def teacher_params
    params.require(:teacher).permit(:name, :classroom_id, subjects_attributes: [:id, :name])
  end
end

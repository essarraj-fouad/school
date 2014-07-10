class ClassroomsController < ApplicationController
  before_action :authenticate_user!
  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      flash[:notice] = t('flash.classrooms.create.notice')
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def classroom_params
    params.require(:classroom).permit(:level, :sublevel, :period)
  end
end

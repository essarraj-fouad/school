class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      flash[:notice] = t('flash.classrooms.create.notice')
      redirect_to root_path
    end
  end

  private
  def classroom_params
    params.require(:classroom).permit(:level, :sublevel)
  end
end

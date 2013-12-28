class ClassroomsController < ApplicationController
  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      flash[:notice] = "Classroom saved"
      redirect_to new_classroom_path
    end
  end

  private
  def classroom_params
    params.require(:classroom).permit(:level, :sublevel)
  end
end

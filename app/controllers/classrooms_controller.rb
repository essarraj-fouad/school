class ClassroomsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @classrooms = Classroom.all
  end

  def new
    @classroom = Classroom.new
  end

  def create
    @classroom = Classroom.new(classroom_params)
    if @classroom.save
      redirect_to root_path, notice: t("flash.classrooms.create.notice")
    else
      render :new
    end
  end

  def destroy
    classroom = Classroom.find(params[:id])
    classroom.destroy
    redirect_to root_path, notice: "Classroom successfully deleted."
  end

  private
  def classroom_params
    params.require(:classroom).permit(:level, :sublevel, :period)
  end
end

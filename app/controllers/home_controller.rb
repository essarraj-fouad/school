class HomeController < ApplicationController
  def index
    @classrooms = Classroom.order(:sublevel)
  end
end

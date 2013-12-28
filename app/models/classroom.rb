class Classroom < ActiveRecord::Base
  has_many :teachers
  has_many :students

  def level_with_sublevel
    "#{level} #{sublevel}"
  end
end

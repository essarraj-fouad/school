class Classroom < ActiveRecord::Base
  has_many :teachers
  has_many :students
  validates_uniqueness_of :level, scope: :sublevel

  def level_with_sublevel
    "#{level} #{sublevel}"
  end
end

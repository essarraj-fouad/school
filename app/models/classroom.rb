class Classroom < ActiveRecord::Base
  has_many :teachers, dependent: :destroy
  has_many :students, dependent: :destroy
  validates_uniqueness_of :level, scope: :sublevel

  def level_with_sublevel
    "#{level} #{sublevel}"
  end
end

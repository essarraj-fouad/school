class Student < ActiveRecord::Base
  belongs_to :classroom
  validates_uniqueness_of :name
  validates_presence_of :classroom, :name
end

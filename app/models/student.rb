class Student < ActiveRecord::Base
  belongs_to :classroom
  validates_uniqueness_of :name
end

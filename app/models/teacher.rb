class Teacher < ActiveRecord::Base
  belongs_to :classroom
  has_many :subjects
  accepts_nested_attributes_for :subjects
end

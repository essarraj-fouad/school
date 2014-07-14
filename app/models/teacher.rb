class Teacher < ActiveRecord::Base
  belongs_to :classroom
  has_many :subjects, dependent: :destroy
  accepts_nested_attributes_for :subjects
  validates_presence_of :classroom, :name
end

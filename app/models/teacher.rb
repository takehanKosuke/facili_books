class Teacher < ActiveRecord::Base
  has_many :lessons

  belongs_to :department
end

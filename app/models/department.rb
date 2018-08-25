class Department < ApplicationRecord
  has_many :users
  has_many :lessons
  has_many :teachers

  belongs_to :faculty
end

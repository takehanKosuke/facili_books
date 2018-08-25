class Lesson < ApplicationRecord
  belongs_to :department
  belongs_to :gread
  belongs_to :year

  has_many :users, through: :lesson_users
  has_many :lesson_users
  has_many :books
end

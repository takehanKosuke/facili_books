class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  belongs_to :department
  belongs_to :gread

  has_many :lesson_users
  has_many :lessons, through: :lesson_users
  has_many :user_books
end

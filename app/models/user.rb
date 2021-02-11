class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings

  has_many :student_relationships, foreign_key: :student_id, class_name: 'Booking'
  has_many :students, through: :follower_relationships, source: :students

  has_many :teacher_relationships, foreign_key: :user_id, class_name: 'Booking'
  has_many :teacher, through: :teacher_relationships, source: :teachers
end

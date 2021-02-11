class Booking < ApplicationRecord
  belongs_to :teacher, foreign_key: 'user_id', class_name: 'User'
  belongs_to :student, foreign_key: 'student_id', class_name: 'User'
end

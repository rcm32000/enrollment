class Course < ApplicationRecord
  validates :title, presence: true
  has_many :students
end

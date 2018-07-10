class Student < ApplicationRecord
  validates :name, presence: true
  has_many :addresses
  has_many :courses
end

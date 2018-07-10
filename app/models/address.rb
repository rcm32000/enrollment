class Address < ApplicationRecord
  validates :student_id, :description, :street, :city, :state, :zip, presence: true
  belongs_to :student, dependent: :destroy
end

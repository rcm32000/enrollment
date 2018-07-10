class Address < ApplicationRecord
  validates :description, :street, :city, :state, :zip, presence: true
end

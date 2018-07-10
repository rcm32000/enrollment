require 'rails_helper'

describe 'User can see' do
  scenario 'a single student' do
    student = Student.create!(name: 'Dexter')

    visit student_path(student)

    expect(current_path).to eq("/student/#{student.id}")
    expect(page).to have_content('Dexter')
  end
end

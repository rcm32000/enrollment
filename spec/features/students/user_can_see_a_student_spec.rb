require 'rails_helper'

describe 'User can see' do
  scenario 'a single student' do
    student = Student.create!(name: 'Dexter')

    visit student_path(student)

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content(student.name)
  end
end

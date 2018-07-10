require 'rails_helper'

describe 'nav system' do
  it 'tests link to new student' do
    visit students_path

    click_link 'Enroll a New Student'

    expect(current_path).to eq(new_student_path)
  end
  it 'tests link to show a single student' do
    student = Student.create!(name: 'Andrew')
    visit students_path

    within '#student-1' do
      click_link student.name
    end

    expect(current_path).to eq(student_path(student))
  end
end

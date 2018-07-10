require 'rails_helper'

describe 'User can see' do
  scenario 'a student courses' do
    student = Student.create!(name: 'Dexter')
    course1 = Course.new(title: 'Algebra')
    course2 = Course.new(title: 'Badminton')

    visit student_path(student)

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content(student.name)
    expect(page).to have_content(course1.title)
    expect(page).to have_content(course2.title)
  end
end

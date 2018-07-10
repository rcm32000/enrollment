require 'rails_helper'

describe 'User can see' do
  scenario 'a course students' do
    course = Course.new(title: 'Algebra')
    student1 = Student.create!(name: 'Dexter')
    student2 = Student.create!(name: 'Bobby')

    visit course_path(course)

    expect(current_path).to eq("/courses/#{course.id}")
    expect(page).to have_content(course.title)
    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
  end
end

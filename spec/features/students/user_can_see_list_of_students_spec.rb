require 'rails_helper'

describe 'User can see' do
  scenario 'a list of students' do
    student1 = Student.create!(name: 'Dexter')
    student2 = Student.create!(name: 'Bonnie')
    student3 = Student.create!(name: 'Richard')

    visit students_path

    expect(current_path).to eq('/students')
    expect(page).to have_content(student1.name)
    expect(page).to have_content(student2.name)
    expect(page).to have_content(student3.name)
  end
end

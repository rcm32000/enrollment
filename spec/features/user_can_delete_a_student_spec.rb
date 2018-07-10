require 'rails_helper'

describe 'User can' do
  scenario 'delete a student' do
    student1 = Student.create!(name: 'Dexter')
    student2 = Student.create!(name: 'Bonnie')
    student3 = Student.create!(name: 'Richard')

    visit students_path
    within '#student-2' do
      click_button 'Delete'
    end

    expect(current_path).to eq('/students')
    expect(page).to have_content(student1.name)
    expect(page).to have_content("#{student2.name} was successfully expelled")
    expect(page).to have_content(student3.name)
  end
end

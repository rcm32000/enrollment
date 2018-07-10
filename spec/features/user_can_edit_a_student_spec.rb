require 'rails_helper'

describe 'User can' do
  scenario 'edit a student' do
    student = Student.create!(name: 'Tristan')
    new_name = 'Seth'

    visit student_path(student)

    click_button 'Edit'

    fill_in :student_name, with: new_name
    click_button 'Save'

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content(new_name)
    expect(page).to_not have_content(student.name)
  end
end

require 'rails_helper'

describe 'User can' do
  scenario 'add a student address' do
    student = Student.create!(name: 'Tristan')
    address = student.addresses.create!(description: 'Permanent Address',
                                        street: 'Main',
                                        city: 'Los Altos',
                                        state: 'CA',
                                        zip: 94024)

    visit new_student_address_path(student)

    fill_in :student_name, with: new_name
    fill_in :student_name, with: new_name
    fill_in :student_name, with: new_name
    fill_in :student_name, with: new_name
    fill_in :student_name, with: new_name
    click_button 'Save'

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content(new_name)
    expect(page).to_not have_content(student.name)
  end
end

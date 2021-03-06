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

    fill_in :address_description, with: address.description
    fill_in :address_street, with: address.street
    fill_in :address_city, with: address.city
    fill_in :address_state, with: address.state
    fill_in :address_zip, with: address.zip
    click_button 'Save'

    expect(current_path).to eq(student_path(student))
    expect(page).to have_content(address.description)
    expect(page).to have_content(address.street)
    expect(page).to have_content(address.city)
    expect(page).to have_content(address.state)
    expect(page).to have_content(address.zip)
  end
end

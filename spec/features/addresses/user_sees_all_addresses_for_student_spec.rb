require 'rails_helper'

describe 'User can' do
  scenario 'see all student addresses' do
    student = Student.create!(name: 'Tristan')
    address1 = student.addresses.create!(description: 'Permanent Address',
                                         street: 'Main',
                                         city: 'Los Altos',
                                         state: 'CA',
                                         zip: 94024)
    address2 = student.addresses.create!(description: 'Summer Home',
                                         street: 'Market',
                                         city: 'New York',
                                         state: 'NY',
                                         zip: 30228)

    visit student_path(student)

    expect(page).to have_content(address1.description)
    expect(page).to have_content(address1.street)
    expect(page).to have_content(address1.city)
    expect(page).to have_content(address1.state)
    expect(page).to have_content(address1.zip)
    expect(page).to have_content(address2.description)
    expect(page).to have_content(address2.street)
    expect(page).to have_content(address2.city)
    expect(page).to have_content(address2.state)
    expect(page).to have_content(address2.zip)
  end
end

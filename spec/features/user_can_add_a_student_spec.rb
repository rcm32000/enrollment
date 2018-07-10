require 'rails_helper'

describe 'User can' do
  scenario 'add a student' do
    name = 'Keegan'

    visit new_student_path

    fill_in :name, with: name
    click_button 'Enroll'

    expect(current_path).to eq("/students/#{student.id}")
    expect(page).to have_content(name)
  end
end

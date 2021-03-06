require 'rails_helper'

describe Address do
  context 'validations' do
    it { should validate_presence_of(:student_id) }
    it { should validate_presence_of(:description) }
    it { should validate_presence_of(:street) }
    it { should validate_presence_of(:city) }
    it { should validate_presence_of(:state) }
    it { should validate_presence_of(:zip) }
  end
end

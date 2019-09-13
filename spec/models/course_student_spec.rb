require 'rails_helper'

describe CourseStudent, type: :model do
  describe "validations" do
    it { should validate_presence_of :grade }
    it { should validate_numericality_of(:grade).only_integer }
    it { should validate_inclusion_of(:grade).in_range(0..100) }
  end

  describe "relationships" do
    it { should belong_to :course }
    it { should belong_to :student }
  end
end

require 'rails_helper'

describe Student, type: :model do
  describe "validations" do
    it { should validate_presence_of :name }
    it { should validate_numericality_of(:grade).only_integer }
    it { should validate_inclusion_of(:grade).in_range(0..100) }
  end

end

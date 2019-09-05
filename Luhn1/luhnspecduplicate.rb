require 'spec_helper'

RSpec.describe Luhn, type: :model do
  describe 'is_valid? should work' do
    it 'should return true if the number is valid' do
      expect(Luhn.new(4194560385008504).is_valid?).to be true
    end

    it 'should return false if the number is not valid' do
      expect(Luhn.new(4194560385008505).is_valid?).to be false
    end

    # some credit card numbers are 15 digits
    # these tests confirm the code is starting on the right side, not the left
    it 'should return true if the number is valid and the number has an odd number of digits' do
      expect(Luhn.new(377681478627336).is_valid?).to be true
    end

    it 'should return false if the number is not valid and the number has an odd number of digits' do
      expect(Luhn.new(377681478627337).is_valid?).to be false
    end
  end
end
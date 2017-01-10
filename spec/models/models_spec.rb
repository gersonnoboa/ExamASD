require "rails_helper"

describe 'Both models' do
  context 'Validation' do
    it 'should create a reservation with a property' do
      property = FactoryGirl.create(:property)
      reservation = FactoryGirl.create(:reservation)
      expect(property).to be_valid
      expect(reservation).to be_valid
      expect(property.id).to eq(reservation.property_id)
    end
  end
end
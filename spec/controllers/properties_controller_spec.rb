require "rails_helper"

describe PropertiesController do 
  context 'tests' do

    it 'should bring nothing when dates are empty' do
      pc = PropertiesController.new

      start_date = ''
      end_date = ''
      city = 'Quito'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end

    it 'should bring nothing when city is empty' do
      pc = PropertiesController.new

      start_date = '2016-01-11 00:00:00'
      end_date = '2016-01-10 00:00:00'
      city = ''

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end

    it 'should bring empty because input is invalid' do
      pc = PropertiesController.new

      start_date = '2016-01-11 00:00:00'
      end_date = '2016-01-11 00:00:00'
      city = 'Quito'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end    

    it 'should bring empty because end cannot be lower than start' do
      pc = PropertiesController.new

      start_date = '2016-01-11 00:00:00'
      end_date = '2016-01-10 00:00:00'
      city = 'Quito'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end    

    it 'should bring empty because there is one booking in the middle' do

      pc = PropertiesController.new

      property = FactoryGirl.create(:property)
      reservation = FactoryGirl.create(:reservation)

      start_date = '2016-01-11 00:00:00'
      end_date = '2016-01-12 00:00:00'
      city = 'Quito'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end

    it 'should bring empty because there is one booking after' do
      pc = PropertiesController.new

      property = FactoryGirl.create(:property)
      reservation = FactoryGirl.create(:reservation)

      start_date = '2016-01-11 00:00:00'
      end_date = '2016-01-13 00:00:00'
      city = 'Quito'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end

    it 'should bring empty because there is one booking the same days' do
      pc = PropertiesController.new

      property = FactoryGirl.create(:property)
      reservation = FactoryGirl.create(:reservation)

      start_date = '2016-01-10 00:00:00'
      end_date = '2016-01-12 00:00:00'
      city = 'Quito'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end

    it 'should display booking because there is no bookings' do
      pc = PropertiesController.new

      property = FactoryGirl.create(:property)
      reservation = FactoryGirl.create(:reservation)

      start_date = '2016-01-20 00:00:00'
      end_date = '2016-01-21 00:00:00'
      city = 'Quito'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(1)
    end

    it 'should not display booking because there is no bookings but city is wrong' do
      pc = PropertiesController.new

      property = FactoryGirl.create(:property)
      reservation = FactoryGirl.create(:reservation)

      start_date = '2016-01-20 00:00:00'
      end_date = '2016-01-21 00:00:00'
      city = 'Guayaquil'

      expect(pc.get_properties(start_date, end_date, city).count).to eq(0)
    end

  end
end
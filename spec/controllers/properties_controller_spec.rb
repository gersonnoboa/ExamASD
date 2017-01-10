require "rails_helper"

describe PropertiesController do 
  context 'tests' do

    it 'should bring nothing when dates are empty' do
      pc = PropertiesController.new

      start_date = ''
      end_date = ''

      expect(pc.get_properties(start_date, end_date).count).to eq(0)
    end

    it 'should bring empty because input is invalid' do
      pc = PropertiesController.new

      start_date = '10-Jan-2016'
      end_date = '10-Jan-2016'

      expect(pc.get_properties(start_date, end_date).count).to eq(0)
    end    

    it 'should bring empty because end cannot be lower than start' do
      pc = PropertiesController.new

      start_date = '10-Jan-2016'
      end_date = '09-Jan-2016'

      expect(pc.get_properties(start_date, end_date).count).to eq(0)
    end    

    it 'should bring empty because there is one booking before' do

    end

    it 'should bring empty because there is one booking after' do

    end

    it 'should bring empty because there is one booking between' do

    end

    it 'should bring empty because there is one booking the same days' do

    end

  end
end
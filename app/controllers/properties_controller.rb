class PropertiesController < ApplicationController

  def property_params
    params.require(:property).permit(:start_date, :end_date)
  end

  def index
    @properties = Property.all
  end

  def get_properties start_date, end_date
    @properties = []

    if start_date == "" || end_date == "" || (start_date == end_date) || (start_date > end_date)
      
    else
      reservations_between_start = Reservations.where("? BETWEEN start_date AND end_date", start_date)
      reservations_between_end = Reservations.where("? BETWEEN start_date AND end_date", end_date)

      final_reservations = reservations_between_end.each { |e|
        
      }
    end

    return @properties
  end
end
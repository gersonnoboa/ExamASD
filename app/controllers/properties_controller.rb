class PropertiesController < ApplicationController

  def property_params
    params.require(:property).permit(:start_date, :end_date, :city)
  end

  def index
    @properties = get_properties(params[:start_date], params[:end_date], params[:city])
  end

  def get_properties start_date, end_date, city
    @properties = []

    if start_date == "" || end_date == "" || (start_date == end_date) || (start_date > end_date) || city == ""
      
    else

      startr = Reservation.where('start_date <= ? AND end_date >= ?', start_date, start_date)

      endr = Reservation.where('start_date <= ? AND end_date >= ?', end_date, end_date)
      
      finalr = (startr + endr).uniq

      all = Property.where("location = ?", city)

      all.each { |e|  
        if finalr.any?{|a| a.property_id == e.id}

        else

          @properties.push(e)
        end
      }


    end

    return @properties
  end
end
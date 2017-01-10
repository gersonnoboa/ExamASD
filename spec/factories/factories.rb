FactoryGirl.define do

  factory :property do |f|
    f.id 1
    f.cost 10.00
    f.lat 79.89
    f.lng 0.5
    f.area 30.00
    f.location 'Quito'
    f.kitchen true
    f.beds 2
    f.wifi true
  end   

  factory :reservation do |f|
    f.property_id 1
    f.start_date '10-Jan-2016'
    f.end_date '16-Jan-2016'
  end

  factory :one_day_reservation do |f|
    f.property_id 1
    f.start_date '10-Jan-2016'
    f.end_date '11-Jan-2016'
  end
end
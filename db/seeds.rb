property1 = Property.create!({:cost => 10.00, :lat => 79.89, :lng => 0.5, :area => 30.00, :location => 'Quito', :kitchen => true, :beds => 2, :wifi => true})
property1.reservations.create!({:start_date => '10-Jan-2016', :end_date => '16-Jan-2016'})

property2 = Property.create!({:cost => 20.00, :lat => 25.89, :lng => 0.5, :area => 40.00, :location => 'Lossi', :kitchen => true, :beds => 3, :wifi => true})
property2.reservations.create!({:start_date => '10-Jan-2016', :end_date => '20-Jan-2016'})

property3 = Property.create!({:cost => 30.00, :lat => 79.89, :lng => 30.5, :area => 50.00, :location => 'Liivi', :kitchen => true, :beds => 4, :wifi => true})
property3.reservations.create!({:start_date => '10-Jan-2016', :end_date => '30-Jan-2016'})

property4 = Property.create!({:cost => 40.00, :lat => 25.89, :lng => 35.5, :area => 60.00, :location => 'Vanemuise', :kitchen => false, :beds => 4, :wifi => true})
property4.reservations.create!({:start_date => '20-Jan-2016', :end_date => '31-Jan-2016'})

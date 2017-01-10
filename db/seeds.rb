more_properties = [
  {:cost => 10.00, :lat => 79.89, :lng => 0.5, :area => 30.00, :location => 'Quito', :kitchen => true, :beds => 2, :wifi => true, :availability_initial => '10-Jan-2016', :availability_final => '16-Jan-2016'},
  {:cost => 20.00, :lat => 25.89, :lng => 0.5, :area => 40.00, :location => 'Lossi', :kitchen => true, :beds => 3, :wifi => true, :availability_initial => '10-Jan-2016', :availability_final => '20-Jan-2016'},
  {:cost => 30.00, :lat => 79.89, :lng => 30.5, :area => 50.00, :location => 'Liivi', :kitchen => true, :beds => 4, :wifi => true, :availability_initial => '10-Jan-2016', :availability_final => '30-Jan-2016'},
  {:cost => 40.00, :lat => 25.89, :lng => 35.5, :area => 60.00, :location => 'Vanemuise', :kitchen => false, :beds => 4, :wifi => true, :availability_initial => '20-Jan-2016', :availability_final => '31-Jan-2016'}
]

more_properties.each do |property|
  Property.create!(property)
end
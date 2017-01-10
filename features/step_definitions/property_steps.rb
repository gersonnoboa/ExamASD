Given /the following rooms exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Property.create(movie)
  end
  
end

Given /the following reservations exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Reservation.create(movie)
  end
  
end

When /I fill the start date with: (.*)/ do |value|
  When /I fill in start_date with value/
end

When /I fill the end date with: (.*)/ do |value|
  When /I fill in end_date with value/
end

When /I fill the city with: (.*)/ do |value|
  When /I fill in city_location with value/
end

Then /I should see nothing/ do
  # Make sure that all the movies in the app are visible in the table
  dbCount = Movie.all.count
  tableCount = page.all('#properties tr').size - 1
  expect(tableCount).to eq 0
end
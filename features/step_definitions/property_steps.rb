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

Then /I should see nothing/ do
  tableCount = page.all('#properties tr').size - 1
  expect(tableCount).to eq 0
end

Given(/^I fill in the start date with: '(\d+)\-(\d+)\-(\d+) (\d+):(\d+):(\d+)'$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  fill_in "start_date", :with => arg1 + "-" + arg2 + "-" + arg3 + " " + arg4 + ":" + arg5 + ":" + arg6
end

Given(/^I fill in the end date with: '(\d+)\-(\d+)\-(\d+) (\d+):(\d+):(\d+)'$/) do |arg1, arg2, arg3, arg4, arg5, arg6|
  fill_in "end_date", :with => arg1 + "-" + arg2 + "-" + arg3 + " " + arg4 + ":" + arg5 + ":" + arg6
end

Given(/^I fill in the city with: 'Quito'$/) do
  fill_in "city_location", :with => 'Quito'
end

Given(/^I fill in the city with: 'Guayaquil'$/) do
  fill_in "city_location", :with => 'Guayaquil'
end

Then /I should see data/ do
  # Make sure that all the movies in the app are visible in the table
  tableCount = page.all('#movies tr').size
  expect(tableCount).not_to eq 0
end

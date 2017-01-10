Feature: Display available rooms based on city and date range
 
  As a traveler
  So that I can quickly browse rooms available in a city and date range
  I want to see rooms that are available on the date range I choose

Background: Info added to DB
  Given the following rooms exist:
  | cost  | lat   | lng   | area  | location  | kitchen | beds  | wifi  |
  | 10.00 | 12.34 | 56.78 | 10.00 | Quito     | true    | 3     | true  |
  | 20.00 | 13.45 | 57.68 | 20.00 | Guayaquil | true    | 2     | true  |

  And the following reservations exist:
  | start_date  | end_date    | property_id |
  | 10-Jan-2016 | 16-Jan-2016 | 1           |
  | 12-Jan-2016 | 13-Jan-2016 | 2           |

  And I am on the home page

Scenario: Empty if no input
  Given I fill in the start date with: '2016-01-10 00:00:00'
  And I fill in the end date with: '2016-01-10 00:00:00'
  And I fill in the city with: 'Quito'
  And I press "Refresh"
  Then I should see nothing

Scenario: Empty when there are reservations
  Given I fill in the start date with: '2016-01-10 00:00:00'
  And I fill in the end date with: '2016-01-16 00:00:00'
  And I fill in the city with: 'Quito'
  And I press "Refresh"
  Then I should see nothing

Scenario: Empty when everything's free but not the same city
  Given I fill in the start date with: '2016-01-20 00:00:00'
  And I fill in the end date with: '2016-01-21 00:00:00'
  And I fill in the city with: 'Guayaquil'
  And I press "Refresh"
  Then I should see data

Scenario: List when everything's free
  Given I fill in the start date with: '2016-01-20 00:00:00'
  And I fill in the end date with: '2016-01-21 00:00:00'
  And I fill in the city with: 'Quito'
  And I press "Refresh"
  Then I should see data
  
  
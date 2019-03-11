Feature: Add a flight

	As a vacation planner
	So that I can record how I will get to my destination
	I want to add a flight from one location to another
	
Scenario: Add a new flight
	When I visit the flights page
	And follow "Add a new flight"
	And fill in "Departure from" with "Denver"
	And fill in "Arriving in" with "Syracus"
	And fill in "Departure Date" with "2019-03-10"
	And fill in "Departure Time" with "4 PM"
	And fill in "Arrival Date" with "2019-03-10"
	And submit the form
	Then I should see "Flight from Denver to Syracus at 4PM on March 10"
	
Scenario: Edit an existing flight
	When I visit the flights page
	And follow "Edit" under "My flight"
	And fill in "Departure from" with "LAX"
	And submit the form
	Then I should see "Flight from LAX to Syracus at 4PM on March 10"

Scenario: View an exisitng flight
	When I visit the flights page
	And follow the "View" under "My flight"
	Then I should see "Flight information"

Scenario: Delete an exisitng flight
	When I visit the flights page
	And follow "Delete" under "My flight"
	Then I should not see "My Flight"

Scenario: Add a new flight that is missing a departure field
	When I vist the flights page
	And follow "Add a new flight"
	And fill in "Departure from" with ""
	And fill in "Arriving in" with "Syracus"
	And fill in "Departure Date" with "2019-03-10"
	And fill in "De[arture Time" with "4 PM"
	And fill in "Arrival Date" with "2019-03-10"
	And submit the form
	Then I should see "Departure field is missing or blank"

Scenario: Edit and exisitng flight and remove the departure field
	When I visit the flights page
	And follow "Edit" under "My flight"
	And fill in "Departure from" with ""
	And submit the form
	Then I should see "Departure field is missing or blank"

Scenario: View a nonexistent flight
	When I visit the flights page
	And follow "View" under ""
	Then I should not see "My flight"

require "application_system_test_case"

class AddFlightsTest < ApplicationSystemTestCase
  setup do
    @add_flight = add_flights(:one)
  end

  test "visiting the index" do
    visit add_flights_url
    assert_selector "h1", text: "Add Flights"
  end

  test "creating a Add flight" do
    visit add_flights_url
    click_on "New Add Flight"

    fill_in "Arrivaltime", with: @add_flight.arrivalTime
    fill_in "Arriving", with: @add_flight.arriving
    fill_in "Departing", with: @add_flight.departing
    fill_in "Departuretime", with: @add_flight.departureTime
    click_on "Create Add flight"

    assert_text "Add flight was successfully created"
    click_on "Back"
  end

  test "updating a Add flight" do
    visit add_flights_url
    click_on "Edit", match: :first

    fill_in "Arrivaltime", with: @add_flight.arrivalTime
    fill_in "Arriving", with: @add_flight.arriving
    fill_in "Departing", with: @add_flight.departing
    fill_in "Departuretime", with: @add_flight.departureTime
    click_on "Update Add flight"

    assert_text "Add flight was successfully updated"
    click_on "Back"
  end

  test "destroying a Add flight" do
    visit add_flights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Add flight was successfully destroyed"
  end
end

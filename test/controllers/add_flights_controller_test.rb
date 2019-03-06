require 'test_helper'

class AddFlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @add_flight = add_flights(:one)
  end

  test "should get index" do
    get add_flights_url
    assert_response :success
  end

  test "should get new" do
    get new_add_flight_url
    assert_response :success
  end

  test "should create add_flight" do
    assert_difference('AddFlight.count') do
      post add_flights_url, params: { add_flight: {  } }
    end

    assert_redirected_to add_flight_url(AddFlight.last)
  end

  test "should show add_flight" do
    get add_flight_url(@add_flight)
    assert_response :success
  end

  test "should get edit" do
    get edit_add_flight_url(@add_flight)
    assert_response :success
  end

  test "should update add_flight" do
    patch add_flight_url(@add_flight), params: { add_flight: {  } }
    assert_redirected_to add_flight_url(@add_flight)
  end

  test "should destroy add_flight" do
    assert_difference('AddFlight.count', -1) do
      delete add_flight_url(@add_flight)
    end

    assert_redirected_to add_flights_url
  end
end

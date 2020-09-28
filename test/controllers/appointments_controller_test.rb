require 'test_helper'

class AppointmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @appointment = appointments(:one)
  end

  # User clicks the link to schedule an appointment
  test "should get new" do
    get new_appointment_url
    assert_response :success
  end

  # User inputs their email and click "Request Appointment"
  test "should create appointment" do
    assert_difference('Appointment.count') do
      post appointments_url, params: { appointment: { email: "testemail@example.com" } }
    end

    assert_response :success
  end

  # User clicks the link in their email
  test "should get edit" do
    get edit_appointment_url(@appointment)
    assert_response :success
  end

  # User clicks the link in their email after filling out the form
  test "should show appointment" do
    get appointment_url(@appointment)
    assert_response :success
  end

  # User fills out the form and submits their appointment
  test "should update appointment" do
    patch appointment_url(@appointment), params: { appointment: 
    { 
      first: "John",
      last: "Bob",
      phone: "111-222-3333",
      year: "1999",
      make: "Toyota",
      model: "Corolla",
      repair: "Tire change",
      datetime: "2020-11-11 1300" 
    } }
    assert_response :success
  end
end

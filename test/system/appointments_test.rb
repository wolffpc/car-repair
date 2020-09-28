require "application_system_test_case"

class AppointmentsTest < ApplicationSystemTestCase
  setup do
    @appointment = appointments(:one)
  end

  test "creating a Appointment" do
    visit "/"
    click_on "Schedule new appointment"

    assert_text "New Appointment"
    click_on "Home"
  end

end

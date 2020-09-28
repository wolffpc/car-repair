require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  test "Should not save appointment without email" do
    appointment = Appointment.new
    assert_not appointment.save
  end

  test "Should save appointment when provided email" do
    appointment = Appointment.new(email: "test@example.com")
    assert appointment.save
  end

  test "Should not update appointment with blank form fields" do
    appointment = Appointment.last
    assert_not appointment.update(first: "John")
  end

  test "Should update appointment when all fields are filled" do
    appointment = Appointment.last
    assert appointment.update(
      first: "John",
      last: "Doe",
      phone: "111-222-3333",
      year: "2001",
      make: "Honda",
      model: "Civi",
      repair: "Change oil",
      datetime: "2020-11-25 09:30:00"
    )
  end
end

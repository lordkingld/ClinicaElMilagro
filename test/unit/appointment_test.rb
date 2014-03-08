require 'test_helper'

class AppointmentTest < ActiveSupport::TestCase
  test "crear cita sin contenido" do
    appo = Appointment.new
    assert !appo.save, "se guardo el appointment sin contenido"
  end
end
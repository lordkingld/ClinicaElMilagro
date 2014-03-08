require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "crear usuario sin contenido" do
    user = User.new
    assert !user.save, "se intento crear el usuario sin contenido"
  end
end
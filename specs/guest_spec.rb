require ('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Cyrus", "Balsara")
  end 

  def test_guest_has_first_name
    assert_equal('Cyrus', @guest1.first_name)
  end 

  def test_guest_has_surname
    assert_equal('Balsara', @guest1.surname)
  end 





end 

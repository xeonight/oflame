require 'test_helper'

class ThingletTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Thinglet.new.valid?
  end
end

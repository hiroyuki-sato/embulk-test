require "test_helper"

class Embulk::TestTest < Test::Unit::TestCase
  def test_that_it_has_a_version_number
    refute_nil ::Embulk::Test::VERSION
  end

  def test_it_does_something_useful
    assert true
  end
end
require 'test_helper'

class PriorityTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Priority.new.valid?
  end
end

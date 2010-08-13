require 'test_helper'

class TaskCategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TaskCategory.new.valid?
  end
end

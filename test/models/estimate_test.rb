require 'test_helper'

class EstimateTest < ActiveSupport::TestCase
  test 'count estimates' do
    assert_equal Estimate.all.count, 1
  end
end
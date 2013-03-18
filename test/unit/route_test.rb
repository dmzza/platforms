require 'test_helper'

class RouteTest < ActiveSupport::TestCase
	setup do
		@route = routes(:manhattan)
	end

	test "stations are sorted with the terminal last" do
		last_stop = @route.stations[@route.stations.length - 1]
		assert_equal last_stop, @route.terminal
	end
end

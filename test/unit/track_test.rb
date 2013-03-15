require 'test_helper'

class TrackTest < ActiveSupport::TestCase
	setup do
		@track = tracks(:manhattan)
	end

	test "stations are sorted with the terminal last" do
		last_stop = @track.stations[@track.stations.length - 1]
		assert_equal last_stop, @track.terminal
	end
end

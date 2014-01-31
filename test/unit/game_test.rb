require 'test_helper'

class GameTest < ActiveSupport::TestCase

	# Relationship tests
	should have_many(:user_game_profiles)
	should have_many(:users).through(:user_game_profiles)

end

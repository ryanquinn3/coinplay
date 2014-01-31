require 'test_helper'

class UserTest < ActiveSupport::TestCase

	# Relationship tests
	should have_many(:user_game_profiles)
	should have_many(:games).through(:user_game_profiles)

end

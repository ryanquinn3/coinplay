require 'test_helper'

class GameTest < ActiveSupport::TestCase

	# Relationship tests
	should have_many(:user_game_profiles)
	should have_many(:users).through(:user_game_profiles)

	should have_many(:maps)
	should have_many(:game_types)
	should have_many(:lobbies)

	# Validation tests
	should validate_presence_of(:name)
	should validate_presence_of(:api_url)

end

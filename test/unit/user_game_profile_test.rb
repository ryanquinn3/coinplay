require 'test_helper'

class UserGameProfileTest < ActiveSupport::TestCase

	# Relationship tests
	should belong_to(:users)
	should belong_to(:games)

	# Validation tests
	should validate_presence_of(:game_id)
	should validate_presence_of(:user_id)
	should validate_presence_of(:username)
	should validate_presence_of(:verified)
	should validate_presence_of(:region)

	should validate_numericality_of(:game_id)
	should validate_numericality_of(:user_id)
	should validate_numericality_of(:region)
	should validate_numericality_of(:wins)
	should validate_numericality_of(:losses)
	should_not allow_value(nil).for(:game_id)
	should_not allow_value(nil).for(:user_id)
	should_not allow_value(nil).for(:region)
	should_not allow_value(nil).for(:wins)
	should_not allow_value(nil).for(:losses)

	should validate_numericality_of(:username_id)
	should validate_numericality_of(:rank)
	should validate_numericality_of(:league)
	should allow_value(nil).for(:username_id)
	should allow_value(nil).for(:rank)
	should allow_value(nil).for(:league)

	# context test

end

require 'test_helper'

class UserTest < ActiveSupport::TestCase

	# Relationship tests
	should have_many(:user_game_profiles)
	should have_many(:games).through(:user_game_profiles)

	# Validation tests
	should validate_presence_of(:username)
	should validate_presence_of(:bitcoin_balance)
	should validate_presence_of(:password)
	should validate_presence_of(:password_confirmation)
	should validate_confirmation_of(:password)
	should have_secure_password

	should validate_numericality_of(:bitcoin_balance)
	should ensure_length_of(:username).is_at_least(6).is_at_most(12)
	should ensure_length_of(:password).is_at_least(8)

	context "Creating a new user " do
		setup do
			@user = User.new
	        @user.username = "bennybits"
	        @user.password = "coinmaster123"
	        @user.password_confirmation = "coinmaster123"
	        @user.save
		end

		teardown do
			@user.destroy
		end

		should "have a working authenticate method" do
			assert User.authenticate("bennybits", "coinmaster123")
		end
	end

end

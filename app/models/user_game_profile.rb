class UserGameProfile < ActiveRecord::Base
  attr_accessible :game_id, :league, :losses, :rank, :region, :user_id, :username, :username_id, :verified, :wins

  # Relationships
  belongs_to :games, :foreign_key => "game_id"
  belongs_to :users, :foreign_key => "user_id"

  # Validations
  # make sure required fields are present
  validates_presence_of :game_id, :user_id, :username, :verified, :region

  validates_numericality_of :game_id, :user_id, :region, :wins, :losses
  validates_numericality_of :username_id, :allow_nil => true
  validates_numericality_of :rank, :allow_nil => true
  validates_numericality_of :league, :allow_nil => true

  # WRITE TESTS FOR
  #validate :valid_game_id
  #validate :valid_user_id

  # Constants
  LOL_REGIONS = [["NA", 0], ["KR", 1], ["EUNE", 2], ["EUW", 3]]

  private
  def valid_game_id
  	game_ids = Game.all.map{|g| g.id}
	unless game_ids.include?(self.game_id)
		errors.add(:game, "is not a valid game")
	end
  end

  def valid_user_id
  	user_ids = User.all.map{|u| u.id}
	unless user_ids.include?(self.user_id)
		errors.add(:user, "is not a valid user")
	end
  end

end

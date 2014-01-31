class UserGameProfile < ActiveRecord::Base
  attr_accessible :game_id, :league, :losses, :rank, :region, :user_id, :username, :username_id, :verified, :wins

  # Relationships
  belongs_to :games, :foreign_key => "game_id"
  belongs_to :users, :foreign_key => "user_id"

end

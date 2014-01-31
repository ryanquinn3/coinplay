class User < ActiveRecord::Base
  attr_accessible :active, :bitcoin_balance, :password_digest, :username

  # Relationships
  has_many :user_game_profiles
  has_many :games, :through => :user_game_profiles

end

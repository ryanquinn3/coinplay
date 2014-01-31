class User < ActiveRecord::Base
  attr_accessible :active, :bitcoin_balance, :password, :password_confirmation, :username

  has_secure_password

  # Relationships
  has_many :user_game_profiles
  has_many :games, :through => :user_game_profiles

  # Validations
  # make sure required fields are present
  validates_presence_of :username, :bitcoin_balance
  validates_presence_of :password, :on => :create 
  validates_presence_of :password_confirmation, :on => :create 
  validates_confirmation_of :password, :message => "does not match"

  validates_numericality_of :bitcoin_balance
  validates_length_of :username, :minimum => 6, :maximum => 12
  validates_length_of :password, :minimum => 8

  def self.authenticate(username, password)
    find_by_username(username).try(:authenticate, password)
  end

end

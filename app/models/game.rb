class Game < ActiveRecord::Base
  attr_accessible :api_url, :name

  # Relationships
  has_many :user_game_profiles
  has_many :users, :through => :user_game_profiles

  # Validations
  validates_presence_of :name, :api_url

  # Constants

  # LOL APIS
  # REGION/v1.1/champion
  # REGION/v1.3/game/by-summoner/SUMMONER_ID/recent
  # REGION/v2.3/league/by-summoner/SUMMONER_ID
  # REGION/v1.3/summoner/SUMMONER_ID/runes
  # REGION/v1.3/summoner/by-name/SUMMONER_NAME
  # REGION/v2.2/team/by-summoner/SUMMONER_ID

end

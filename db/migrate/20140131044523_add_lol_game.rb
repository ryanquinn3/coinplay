class AddLolGame < ActiveRecord::Migration
  def change
  	lol = Game.new
  	lol.name = "League of Legends"
  	lol.api_url = "https://prod.api.pvp.net/api/lol/"
  	lol.save!
  end
end

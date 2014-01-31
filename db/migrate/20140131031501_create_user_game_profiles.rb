class CreateUserGameProfiles < ActiveRecord::Migration
  def change
    create_table :user_game_profiles do |t|
      t.integer :game_id
      t.integer :user_id
      t.string :username
      t.integer :username_id
      t.boolean :verified, :default => false
      t.integer :region
      t.integer :league
      t.integer :rank
      t.integer :wins, :default => 0
      t.integer :losses, :default => 0

      t.timestamps
    end
  end
end

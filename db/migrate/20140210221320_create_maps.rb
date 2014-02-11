class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.integer :game_id
      t.string :name

      t.timestamps
    end
  end
end

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.float :bitcoin_balance
      t.boolean :active

      t.timestamps
    end
  end
end

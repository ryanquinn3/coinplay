require 'simplecov'
SimpleCov.start 'rails'

ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # improves readability of tests
  def deny(condition, msg="")
    # a simple transformation to increase readability IMO
    assert !condition, msg
  end
=begin
  def create_game_context
    #creating tickets
    @hr1 = FactoryGirl.create(:ticket, number: 1629, code: "1c395a")
    @hr2 = FactoryGirl.create(:ticket, number: 1639, code: "1c395b")
    @pl1 = FactoryGirl.create(:ticket, number: 1776, code: "1c395c")
    
    #creating participants
    @james = FactoryGirl.create(:participant)
    @elina = FactoryGirl.create(:participant, :first_name => "Elina", :last_name => "Kim", :email => "ekim@gmail.com", :ticket_num => "1639", :p_type => 2, :game_pref=>0)
    @mike = FactoryGirl.create(:participant, :first_name => "Mike", :last_name => "Bove", :email => "mbove@gmail.com", :ticket_num => "1776", :p_type => 1, :game_pref=>1)
    
    #creating games
    @jamesbowling = FactoryGirl.create(:game, :participant => @james)
    @jamespoker = FactoryGirl.create(:game, :g_type => 2, :participant => @james)
    @elinabowling = FactoryGirl.create(:game, :participant => @elina)
  end
  
  def remove_game_context
    #removing tickets
    @hr1.destroy
    @hr2.destroy
    @pl1.destroy
    
    #removing participants
    @james.destroy
    @elina.destroy
    @mike.destroy
    
    #removing games
    @jamesbowling.destroy
    @jamespoker.destroy
    @elinabowling.destroy
    @elinapool.destroy
    @mikebowling.destroy
    @mikepingpong.destroy
  end
=end  
end

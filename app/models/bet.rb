class Bet < ActiveRecord::Base
  attr_accessible :bet, :deadline, :forefeit, :name, :terms
end

class Prediction < ActiveRecord::Base
  attr_accessible :how, :round, :ufc, :user_id, :winner
  belongs_to :user
  
end

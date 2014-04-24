class HomeController < ApplicationController

def fighter
    @fighters = Fighter.where("ufc = 172", params[:name]).limit(6)
  end


end

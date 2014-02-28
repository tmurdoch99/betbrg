class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.string :name
      t.string :bet
      t.string :terms
      t.datetime :deadline
      t.string :forefeit

      t.timestamps
    end
  end
end

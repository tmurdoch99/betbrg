class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :ufc
      t.string :winner
      t.integer :round
      t.integer :how
      t.integer :user_id

      t.timestamps
    end
  end
end

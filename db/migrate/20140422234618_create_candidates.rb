class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :region
      t.string :experience
      t.string :qualifications
      t.string :age
      t.string :ethnicity

      t.timestamps
    end
  end
end

class CreateCandidateSearches < ActiveRecord::Migration
  def change
    create_table :candidate_searches do |t|
      t.string :region
      t.string :experience
      t.string :qualifications
      t.string :age
      t.string :ethnicity

      t.timestamps
    end
  end
end

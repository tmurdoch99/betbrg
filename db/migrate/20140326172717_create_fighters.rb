class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.string :picture
      t.integer :ufc
      t.integer :fight

      t.timestamps
    end
  end
end

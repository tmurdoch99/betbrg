class CreateUserDetails < ActiveRecord::Migration
  def change
    create_table :user_details do |t|
      t.date :birthdate
      t.string :ethnicity
      t.string :university
      t.string :course
      t.string :past_experience
      t.string :personality_traits
      t.string :about_me
      t.string :photo
      t.string :reference_details_1
      t.string :reference_details_2
      t.integer :contact_number
      t.string :contact_email

      t.timestamps
    end
  end
end

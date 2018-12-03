class CreatePoliticians < ActiveRecord::Migration[5.2]
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :party
      t.integer :current_salary
      t.integer :daily_price
      t.integer :vote_price
      t.string :location
      t.text :general_description
      t.string :tag_line
      t.string :photo_url

      t.timestamps
    end
  end
end
